package jsoup;

public class players {

	public int PlayerID;
	public String OverallRank;
	public String Name;
	public String Position;
	public String NFLTeamName;
	public boolean Injured;
	public int NFLTeam_NFLTeamID;
	public players(){
		
	}
	@Override
	public String toString(){
		String ts = "";
		ts += "PlayerID: " + new Integer(this.PlayerID).toString() + "\n";
		ts += "Name: " + this.Name + "\n";
		ts += "Position: " + this.Position + "\n";
		ts += "NFLTeamName: " + this.NFLTeamName + "\n";
		ts += "Injured: " + this.Injured + "\n";
		ts += "NFLTeam_NFL_TeamID: " + new Integer(this.NFLTeam_NFLTeamID).toString() + "\n";
		
		return ts;
	}
}
