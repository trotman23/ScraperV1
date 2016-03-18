package jsoup;

import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.sql.*;
import java.util.*;


public class jsoup {

	// djdbc driver name and database
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost/ffadb";

	//  Database credentials
	static final String USER = "root";
	static final String PASS = "eric2mad";


	public static void main(String args[]){

		// commenting out for testing/filling localdb
		List<nflteam> teams = CrawlNflTeams("http://espn.go.com/nfl/standings");
		storeNflTeams(teams);
		for (int i = 0; i <= 800; i+=40){
			String url = "http://games.espn.go.com/ffl/tools/projections?&week=1&scoringPeriodId=1&seasonId=2015&startIndex=" + i;
			List<players> playerList = CrawlPlayers(url);
			for (int j = 0; j < playerList.size(); j++){
				storePlayer(playerList.get(j));
			}
		}
		for (int l = 0; l < 17; l++){
			for (int n = 0; n <= 300; n+=50){
				try {
					String wsUrl = "http://games.espn.go.com/ffl/leaders?&scoringPeriodId="+l+"&seasonId=2015&startIndex=" + n;
					List<weeklyscores> wstemp = CrawlWeeklyScores(wsUrl, l, 2015);
					for(int k = 0; k < wstemp.size(); k++){
						try{
							storeWeeklyScores(wstemp.get(k));
						} catch (Exception e){
							e.printStackTrace();;
						}
					}
					Thread.sleep(5000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
			
			//System.out.println("\n\n\n\n\n\n END OF WEEK " + l + " scrape \n\n\n\n\n\n ");
		}
		List<weeklyscores> wstemp = CrawlWeeklyScores("http://games.espn.go.com/ffl/leaders?&scoringPeriodId=1&seasonId=2015", 1, 2015);
		for(int k = 0; k < wstemp.size(); k++){
			try {
				storeWeeklyScores(wstemp.get(k));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.exit(0);
	}

	private static List<nflteam> CrawlNflTeams(String url){

		List<nflteam> nflteams = new ArrayList<nflteam>();
		//scrape from espn, store it in a list of objects that mimics the NFLTeams table in the db
		try {
			Document doc = Jsoup.connect(url).get();
			//System.out.println(doc.toString());
			Elements teamsTable = doc.select("table");
			Elements teamList = teamsTable.select("tr");
			int numRows = 0;
			int numCols = 0;

			for (int i = 0; i < teamList.size(); i++){
				Element row = teamList.get(i);
				Elements cols = row.children();
				nflteam temp = new nflteam();
				boolean isTeam = false;
				for (int j = 0; j < cols.size(); j++){

					Element teamname = cols.get(j).select("span.team-names").first();
					if (teamname != null){
						temp.NFLTeamName = teamname.text();
						temp.NFLTeamID = i;
						//System.out.println("teamname = " + teamname.text());
						isTeam = true;
					}
					if (j == 1 && isTeam){
						temp.Wins = Integer.parseInt(cols.get(j).text());
					}
					if (j == 2 && isTeam){
						temp.Losses = Integer.parseInt(cols.get(j).text());
					}
					if (j == 3 && isTeam){
						temp.Ties = Integer.parseInt(cols.get(j).text());
					}
					numCols++;

				}
				numCols = 0;
				numRows++;
				if (temp.NFLTeamName != null){
					nflteams.add(temp);
				}
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nflteams;



	}
	private static List<players> CrawlPlayers(String url){

		List<players> pList = new ArrayList<players>();
		
		try {
			Document doc = Jsoup.connect(url).get();
			//System.out.println(doc.toString());
			Elements table = doc.select("table");
			Elements trList = table.select("tr");
			int numRows = 0;
			int numCols = 0;

			for (int i = 0; i < trList.size(); i++){
				Element row = trList.get(i);
				Elements cols = row.children();
				players p = new players();
				//weeklyscores ws = new weeklyscores();
				NflTeamNicknames nn = new NflTeamNicknames();
				//might not need this, but we'll see, link between the tables. i don't know how the
				//java hash lookup functions works on non-primitive object types
				//Map<players, weeklyscores> map = new HashMap<players, weeklyscores>();
				boolean isPlayer = false;
				for (int j = 0; j < cols.size(); j++){

					Element playername = cols.get(j).select("td.playertablePlayerName").first();
					if (playername != null){
						String[] rName = playername.text().split(",");	
						//saying fuck loading D/ST for now. sick of parsing strings in shitty code. will revisit
						//TODO: Figure out what to do with D/ST
						if (rName.length <= 1){
							break;
						}
						p.Name= rName[0];
						String fuck = rName[1].trim();
						String[] extra = rName[1].split("\\p{Z}");
						p.NFLTeamName = nn.nicknames.get(extra[1]);
						p.Position = extra[2];
						p.Injured = false;
						p.NFLTeam_NFLTeamID = getNFLTeamID(p.NFLTeamName);
						//using java hashcode for playerid right now, can change in the future but
						// idk what else to use. thought it was a good idea
						p.PlayerID = Math.abs(p.Name.hashCode());
					}
					//System.out.println("----------------------------------------");
					numCols++;

				}
				//System.out.println(p.toString());
				numCols = 0;
				numRows++;
				//System.out.println("################################################################");
				pList.add(p);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pList;

	}
	private static List<weeklyscores> CrawlWeeklyScores(String url, int week, int season){
		List<weeklyscores> wsList = new ArrayList<weeklyscores>();
		try {
			Document doc = Jsoup.connect(url).get();
			//System.out.println(doc.toString());
			Elements table = doc.select("table");
			Elements trList = table.select("tr.pncPlayerRow");
			int numRows = 0;
			int numCols = 0;

			for (int i = 0; i < trList.size(); i++){
				Element row = trList.get(i);
				Elements cols = row.children();
				weeklyscores ws = new weeklyscores();
				NflTeamNicknames nn = new NflTeamNicknames();
				//might not need this, but we'll see, link between the tables. i don't know how the
				//java hash lookup functions works on non-primitive object types
				//Map<players, weeklyscores> map = new HashMap<players, weeklyscores>();
				boolean isPlayer = false;
				int colsize = cols.size();
				for (int j = 0; j < cols.size(); j++){
					if (j == 0){
						Element playername = cols.get(0).select("a.flexpop").first();
						if (playername != null){
							isPlayer = true;
							//skipping D/ST for now. sick of parsing strings in hacky code. will revisit
							// now thinking of it, it's probably easier to do those from a separate page
							//TODO: Figure out what to do with D/ST
							try{
								//String testing = playername.text().trim();
								ws.Players_PlayerID = getPlayerID(playername.text().trim());
							} catch (Exception e){
								System.out.println(e.toString() + " most likely caused by D/ST");
								e.printStackTrace();
							}
							//there might be a better way to assign these two values
							ws.Week = week;
							ws.Season = season;
							//System.out.println(cols.text());
						}
					}
					
					try {
						if(isPlayer){
							//should really switch this to case:break but w/e
							//System.out.println("j =" + j + "   value= " + cols.get(j).text());
							if (j == 5){
								//passing c/a
								String[] passing = cols.get(j).text().split("/");
								ws.PassingCompletions = Integer.parseInt(passing[0]);
								ws.PassingAttempts = Integer.parseInt(passing[1]);
							}
							if (j == 6){
								ws.PassingAttempts = Integer.parseInt(cols.get(j).text());
							}
							if (j == 7){
								ws.PassingTDs = Integer.parseInt(cols.get(j).text());
							}
							if (j == 8){
								ws.Interceptions = Integer.parseInt(cols.get(j).text());
							}
							if (j == 10){
								ws.RushingAttempts = Integer.parseInt(cols.get(j).text());
							}
							if (j == 11){
								ws.RushingYards = Integer.parseInt(cols.get(j).text());
							}
							if (j == 12){
								ws.RushingTDs = Integer.parseInt(cols.get(j).text());
							}
							if (j == 14){
								ws.Receptions = Integer.parseInt(cols.get(j).text());
							}
							if (j == 15){
								ws.ReceivingYards = Integer.parseInt(cols.get(j).text());
							}
							if (j == 16){
								ws.ReceivingTDs = Integer.parseInt(cols.get(j).text());
							}
							if (j == 17){
								ws.ReceivingTargets = Integer.parseInt(cols.get(j).text());
							}
							if (j == 19){
								ws.Misc2PC = Integer.parseInt(cols.get(j).text());
							}
							if (j == 20){
								ws.MiscFumbles = Integer.parseInt(cols.get(j).text());
							}
							if (j == 21){
								ws.MiscTDs = Integer.parseInt(cols.get(j).text());
							}
							if (j == 23){
								ws.FantasyPointsScored = Double.parseDouble(cols.get(j).text());
							}
						}
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					numCols++;

				}
				wsList.add(ws);
				//System.out.println(p.toString());
				numCols = 0;
				numRows++;
				//System.out.println("################################################################");
				//pList.add(p);
			}
			/*for (int o = 0; o < pList.size(); o++){
				System.out.println(pList.get(o).toString());
			}*/
			//while ()
			//System.out.println(teamList.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return wsList;
	}
	public static void CrawlLeague(String url, int LeagueID){
		
	}
	//method to grab nflteamid from the nfl table based on the full nfl team name
	private static int getNFLTeamID(String teamNameFull){
		//connect to db and grab the nfl team id to assign it in the players crawl
		Connection nConn = null;
		Statement nStmt = null;
		try{

			Class.forName("com.mysql.jdbc.Driver");
			nConn = DriverManager.getConnection(DB_URL,USER,PASS);
			nStmt = nConn.createStatement();
			//select on team name, given team id
			ResultSet rs = nStmt.executeQuery("SELECT NFLTeamID FROM NFLTeam WHERE NFLTeamName = '" + teamNameFull + "';");
			int id = -1;
			while(rs.next()){
				id = rs.getInt("NFLTeamID");
			}
			nConn.close();
			rs.close();
			if (id > 0){
				return id;
			} else return 0;
		
		} catch (Exception e){
			e.printStackTrace();

			return 0;
		} finally{

		}
	}
	private static void storeNflTeams(List<nflteam> nflteams){
		//insert our list of clean values into the localdb

		Connection conn = null;
		Statement stmt = null;

		//testing inserting nfl teams into the NFLTeams table

		try{
			//STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			//STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			//STEP 4: Execute a query
			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql = "";
			sql += "INSERT INTO NFLTeam VALUES";
			//build the large insert query
			for (int o = 0; o < nflteams.size(); o++){
				//System.out.println(nflteams.get(o).toString());

				sql += "(" + nflteams.get(o).NFLTeamID + ",'" + 
						nflteams.get(o).NFLTeamName + "'," +
						nflteams.get(o).Wins + "," + 
						nflteams.get(o).Losses + "," + 
						nflteams.get(o).Ties + "),";
				if (o == (nflteams.size() - 1)){
					sql = sql.substring(0, sql.length() - 1) + ";";
				}

			}
			//System.out.println(sql);
			stmt.executeUpdate(sql);
			//rs.close();
			System.out.println("finished insert");
			stmt.close();
			conn.close();
		}catch(Exception e){
			//Handle errors for JDBC
			e.printStackTrace();
		}
	}
	private static void storePlayer(players p){
		
		Connection conn = null;
		Statement stmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			//buil query
			String sql = "";
			/*
			 * java's string.format method is a not nice, i'm just going to do it manually
			 * sql += "INSERT INTO players VALUES " + String.format("(%1$i,'%2$s','%3$s','%4$s',%5$b,%6$i);",
					players.PlayerID,
					players.Name,
					players.Position,
					players.NFLTeamName,
					players.Injured,
					players.NFLTeam_NFLTeamID
					);*/
			sql += "INSERT INTO players VALUES (" +
					p.PlayerID + "," + 
					"'" + p.Name + "'," + 
					"'" + p.Position + "'," +
					"'" + p.NFLTeamName + "'," +
					p.Injured + "," +
					p.NFLTeam_NFLTeamID + ");";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			//close up
			stmt.close();
			conn.close();
		}catch(Exception e){
			//Handle errors for JDBC
			e.printStackTrace();
		}
	}
	private static void storeWeeklyScores(weeklyscores ws) throws SQLException{
		Connection conn = null;
		Statement stmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			//buil query
			String sql = "";
			sql += "INSERT INTO weeklyscores VALUES (" +
					ws.Week + "," + 
					ws.Season + "," + 
					ws.PassingCompletions + "," + 
					ws.PassingAttempts + "," + 
					ws.PassingYards + "," + 
					ws.PassingTDs + "," + 
					ws.Interceptions + "," + 
					ws.RushingAttempts + "," + 
					ws.RushingYards + "," + 
					ws.RushingTDs + "," + 
					ws.Receptions + "," + 
					ws.ReceivingYards + "," + 
					ws.ReceivingTargets + "," + 
					ws.Misc2PC + "," + 
					ws.MiscFumbles + "," + 
					ws.MiscTDs + "," + 
					ws.FantasyPointsScored + "," + 
					ws.Players_PlayerID + ");"; 
					
					
			System.out.println(sql);
			stmt.executeUpdate(sql);
			//close up
			stmt.close();
			conn.close();
		}catch(Exception e){
			//Handle errors for JDBC
			e.printStackTrace();
		} finally{
			conn.close();
			stmt.close();
		}
		
	}
	
	//gets the player ID from the players table given the player name in string form
	private static int getPlayerID(String name){
		//this and getNFLTeamID can probably be combined to one method, but don't want to do it right now
		// ideas for the method are to pass in the values that make the queries unique, eg nfl team name
		// player name, and return the ID of that player, its all simple select X from Y where Z sql
		Connection pConn = null;
		Statement pStmt = null;
		try{

			Class.forName("com.mysql.jdbc.Driver");
			pConn = DriverManager.getConnection(DB_URL,USER,PASS);
			pStmt = pConn.createStatement();
			//select on team name, given team id
			
			String sql = "SELECT PlayerID FROM players WHERE Name = '" + name + "';";
			System.out.println(sql);
			ResultSet rs = pStmt.executeQuery("SELECT PlayerID FROM players WHERE Name = '" + name + "';");
			int id = -1;
			while(rs.next()){
				id = rs.getInt("PlayerID");
			}
			pConn.close();
			rs.close();
			if (id > 0){
				return id;
			} else return 0;
		
		} catch (Exception e){
			e.printStackTrace();

			return 0;
		} finally{

		}
	}
	
}