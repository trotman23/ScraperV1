CREATE DATABASE  IF NOT EXISTS `ffadb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ffadb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ffadb
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `PlayerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Position` varchar(4) DEFAULT NULL,
  `NFLTeamName` varchar(45) DEFAULT NULL,
  `Injured` tinyint(1) DEFAULT NULL,
  `NFLTeam_NFLTeamID` int(11) NOT NULL,
  PRIMARY KEY (`PlayerID`,`NFLTeam_NFLTeamID`),
  UNIQUE KEY `PlayersID_UNIQUE` (`PlayerID`),
  KEY `fk_Players_NFLTeam1_idx` (`NFLTeam_NFLTeamID`),
  CONSTRAINT `fk_Players_NFLTeam1` FOREIGN KEY (`NFLTeam_NFLTeamID`) REFERENCES `nflteam` (`NFLTeamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2143737750 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (4367993,'Rob Housler','TE','Chicago Bears',0,29),(7939301,'Andre Roberts','WR','Washington Redskins',0,21),(9966811,'Willie Snead','WR','New Orleans Saints',0,33),(11033265,'Heath Miller','TE','Pittsburgh Steelers',0,7),(11693544,'Marquise Goodwin','WR','Buffalo Bills',0,3),(17273134,'Steven Jackson','RB','New England Patriots',0,1),(20715326,'C.J. Fiedorowicz','TE','Houston Texans',0,11),(21553406,'Robbie Gould','K','Chicago Bears',0,29),(21575129,'Jarius Wright','WR','Minnesota Vikings',0,26),(23577046,'James Starks','RB','Green Bay Packers',0,27),(28179313,'Vonta Leach','RB','Baltimore Ravens',0,8),(31743725,'Ryan Tannehill','QB','Miami Dolphins',0,4),(33545465,'Rex Burkhead','RB','Cincinnati Bengals',0,6),(37202964,'Marcus Murphy','RB','New Orleans Saints',0,33),(43369349,'Tre Mason','RB','St. Louis Rams',0,38),(43796990,'Julio Jones','WR','Atlanta Falcons',0,32),(44421183,'Odell Beckham Jr.','WR','New York Giants',0,23),(45104065,'Andrew Quarless','TE','Green Bay Packers',0,27),(48779660,'Joe Flacco','QB','Baltimore Ravens',0,8),(49461553,'Eric Decker','WR','New York Jets',0,2),(53153626,'Jamaal Charles','RB','Kansas City Chiefs',0,17),(57610120,'Jermaine Kearse','WR','Seattle Seahawks',0,37),(64444528,'Jaelen Strong','WR','Houston Texans',0,11),(66736227,'Peyton Manning','QB','Denver Broncos',0,16),(76027479,'Timothy Wright','TE','Detroit Lions',0,28),(80938068,'Willis McGahee','RB','Cleveland Browns',0,9),(84787452,'Stephen Hill','WR','Carolina Panthers',0,31),(87167602,'Andrew Hawkins','WR','Cleveland Browns',0,9),(89421079,'Blair Walsh','K','Minnesota Vikings',0,26),(91666646,'Leonard Hankerson','WR','Buffalo Bills',0,3),(92765805,'Jordan Todman','RB','Pittsburgh Steelers',0,7),(94753643,'Jay Cutler','QB','Chicago Bears',0,29),(103531245,'Gary Barnidge','TE','Cleveland Browns',0,9),(106145610,'Roy Helu','RB','Oakland Raiders',0,18),(107194747,'James Develin','RB','New England Patriots',0,1),(113381563,'Jamize Olawale','RB','Oakland Raiders',0,18),(115371214,'Jeremy Kerley','WR','New York Jets',0,2),(115821968,'Terrance Williams','WR','Dallas Cowboys',0,24),(119081769,'Devin Street','WR','Dallas Cowboys',0,24),(124411264,'Marcus Harris','WR','New York Giants',0,23),(124709356,'Jonathan Krause','WR','Philadelphia Eagles',0,22),(124725915,'MyCole Pruitt','TE','Minnesota Vikings',0,26),(126883194,'Andre Caldwell','WR','Denver Broncos',0,16),(127455234,'Jeremy Butler','WR','Baltimore Ravens',0,8),(127883242,'Fitzgerald Toussaint','RB','Pittsburgh Steelers',0,7),(127960346,'Damian Copeland','WR','Jacksonville Jaguars',0,13),(136474273,'James Wright','WR','Cincinnati Bengals',0,6),(137099958,'Teddy Bridgewater','QB','Minnesota Vikings',0,26),(138973883,'Dez Bryant','WR','Dallas Cowboys',0,24),(144284063,'Harry Douglas','WR','Tennessee Titans',0,14),(153269339,'Donte Moncrief','WR','Indianapolis Colts',0,12),(156752852,'Kenny Stills','WR','Miami Dolphins',0,4),(168488680,'Jeremy Maclin','WR','Kansas City Chiefs',0,17),(172000201,'Nick Toon','WR','St. Louis Rams',0,38),(172417371,'Nick Folk','K','New York Jets',0,2),(175591544,'Benjamin Watson','TE','Baltimore Ravens',0,8),(183610105,'Breshad Perriman','WR','Baltimore Ravens',0,8),(186671047,'Giovani Bernard','RB','Cincinnati Bengals',0,6),(191952299,'Golden Tate','WR','Detroit Lions',0,28),(195681413,'Justice Cunningham','TE','St. Louis Rams',0,38),(195682832,'Shaun Draughn','RB','San Francisco 49ers',0,39),(197362551,'Josh Scobee','K','New Orleans Saints',0,33),(198981718,'Mike Gillislee','RB','Buffalo Bills',0,3),(200521069,'David Fales','QB','Chicago Bears',0,29),(202161423,'LeSean McCoy','RB','Buffalo Bills',0,3),(205098728,'Craig Stevens','TE','Tennessee Titans',0,14),(223542210,'Geno Smith','QB','New York Jets',0,2),(225214139,'David Johnson','RB','Arizona Cardinals',0,36),(232572080,'John Phillips','TE','San Diego Chargers',0,19),(233062393,'Isaiah Crowell','RB','Cleveland Browns',0,9),(238995740,'Jonathan Grimes','RB','Houston Texans',0,11),(239487463,'Branden Oliver','RB','San Diego Chargers',0,19),(241648419,'Travaris Cadet','RB','New Orleans Saints',0,33),(245908962,'Corey Fuller','WR','Detroit Lions',0,28),(254190241,'Kaelin Clay','WR','Baltimore Ravens',0,8),(256609732,'Karlos Williams','RB','Buffalo Bills',0,3),(259786938,'Jeff Heuerman','TE','Denver Broncos',0,16),(262879831,'Michael Williams','TE','New England Patriots',0,1),(264317409,'John Brown','WR','Arizona Cardinals',0,36),(266193732,'Connor Shaw','QB','Cleveland Browns',0,9),(274371074,'Neal Sterling','WR','Jacksonville Jaguars',0,13),(274509779,'Dennis Pitta','TE','Baltimore Ravens',0,8),(276074411,'Jace Amaro','TE','New York Jets',0,2),(279723139,'Marlon Brown','WR','Baltimore Ravens',0,8),(280360991,'Jordan Cameron','TE','Miami Dolphins',0,4),(284399956,'Dorial Green-Beckham','WR','Tennessee Titans',0,14),(289140795,'Bryn Renner','QB','Baltimore Ravens',0,8),(289792333,'Marlon Moore','WR','Cleveland Browns',0,9),(292148266,'Dontrelle Inman','WR','San Diego Chargers',0,19),(295016639,'C.J. Anderson','RB','Denver Broncos',0,16),(295731652,'Mohamed Sanu','WR','Atlanta Falcons',0,32),(295961902,'Mike Kafka*','QB','Minnesota Vikings',0,26),(298135796,'Bernard Pierce','RB','Jacksonville Jaguars',0,13),(306292559,'Matt Simms','QB','Atlanta Falcons',0,32),(306424690,'Boobie Dixon','RB','Buffalo Bills',0,3),(313776413,'Cody Parkey','K','Philadelphia Eagles',0,22),(314424789,'Matt Jones','RB','Washington Redskins',0,21),(316677380,'Matt Hazel','WR','Miami Dolphins',0,4),(318114578,'Matt Forte','RB','New York Jets',0,2),(322693139,'Sean Mannion','QB','St. Louis Rams',0,38),(323589098,'Orleans Darkwa','RB','New York Giants',0,23),(329827849,'Landry Jones','QB','Pittsburgh Steelers',0,7),(332096237,'Paul Richardson','WR','Seattle Seahawks',0,37),(337409145,'T.Y. Hilton','WR','Indianapolis Colts',0,12),(337963139,'Malcom Floyd','WR','San Diego Chargers',0,19),(347487547,'Lance Dunbar','RB','Dallas Cowboys',0,24),(351784805,'Garrett Celek','TE','San Francisco 49ers',0,39),(359602180,'Ray Agnew','RB','Dallas Cowboys',0,24),(362786083,'Kyle Rudolph','TE','Minnesota Vikings',0,26),(362897302,'Ladarius Green','TE','Pittsburgh Steelers',0,7),(367447979,'DeAndre Hopkins','WR','Houston Texans',0,11),(370302011,'Ryan Hewitt','TE','Cincinnati Bengals',0,6),(370435201,'Josh McCown','QB','Cleveland Browns',0,9),(370693886,'Richard Gordon','TE','Denver Broncos',0,16),(372465233,'Mark Ingram','RB','New Orleans Saints',0,33),(377180341,'Charles Johnson','WR','Minnesota Vikings',0,26),(377561102,'Antonio Andrews','RB','Tennessee Titans',0,14),(379324534,'Kevin White','WR','Chicago Bears',0,29),(382869660,'Kevin Smith','WR','Seattle Seahawks',0,37),(387809270,'Carlos Hyde','RB','San Francisco 49ers',0,39),(388570220,'Mike Tolbert','RB','Carolina Panthers',0,31),(400344277,'Mike Nugent','K','Cincinnati Bengals',0,6),(405097406,'Julius Thomas','TE','Jacksonville Jaguars',0,13),(407354694,'Darren Sproles','RB','Philadelphia Eagles',0,22),(418463068,'Bobby Rainey','RB','Tampa Bay Buccaneers',0,34),(421545124,'Matt Barkley','QB','Arizona Cardinals',0,36),(422559615,'Dezmin Lewis','WR','Buffalo Bills',0,3),(430683703,'Aaron Rodgers','QB','Green Bay Packers',0,27),(432692458,'Brandon Wegher','RB','Carolina Panthers',0,31),(435743559,'Reggie Bush','RB','San Francisco 49ers',0,39),(436935151,'Markus Wheaton','WR','Pittsburgh Steelers',0,7),(438286361,'Chris Polk','RB','Houston Texans',0,11),(442169012,'Sebastian Janikowski','K','Oakland Raiders',0,18),(442294447,'Lee Smith','TE','Oakland Raiders',0,18),(443649031,'Jerick McKinnon','RB','Minnesota Vikings',0,26),(445998842,'Matthew Tucker*','RB','Philadelphia Eagles',0,22),(457380812,'Kendall Wright','WR','Tennessee Titans',0,14),(458145600,'Kellen Winslow','TE','New York Jets',0,2),(480911506,'Torrey Smith','WR','San Francisco 49ers',0,39),(499413277,'Chris Thompson','RB','Washington Redskins',0,21),(507145611,'Darrius Heyward-Bey','WR','Pittsburgh Steelers',0,7),(511643223,'Martavis Bryant','WR','Pittsburgh Steelers',0,7),(511705971,'Duron Carter','WR','Indianapolis Colts',0,12),(511888987,'Louis Murphy','WR','Tampa Bay Buccaneers',0,34),(511940407,'Ifeanyi Momah','WR','Arizona Cardinals',0,36),(514483824,'Cairo Santos','K','Kansas City Chiefs',0,17),(521570243,'Daniel Herron','RB','Indianapolis Colts',0,12),(523847331,'Marcel Jensen','TE','Washington Redskins',0,21),(528173619,'Chris Harper','WR','New York Giants',0,23),(529738497,'Josh Gordon','WR','Cleveland Browns',0,9),(534494270,'Andy Dalton','QB','Cincinnati Bengals',0,6),(542562870,'Vincent Jackson','WR','Tampa Bay Buccaneers',0,34),(545437132,'Anquan Boldin','WR','San Francisco 49ers',0,39),(549305729,'Chris Givens','WR','Baltimore Ravens',0,8),(550184499,'Cory Harkey','TE','St. Louis Rams',0,38),(558341648,'Corey Brown','WR','Carolina Panthers',0,31),(558478077,'Rhett Ellison','TE','Minnesota Vikings',0,26),(559921211,'Juwan Thompson','RB','Denver Broncos',0,16),(560404469,'Marquess Wilson','WR','Chicago Bears',0,29),(562945526,'Corey Grant','RB','Jacksonville Jaguars',0,13),(562986469,'John Kuhn','RB','Green Bay Packers',0,27),(563440041,'Jordan Matthews','WR','Philadelphia Eagles',0,22),(569868412,'Dorin Dickerson','TE','Tennessee Titans',0,14),(570644538,'Luke Stocker','TE','Tampa Bay Buccaneers',0,34),(580506996,'Marcus Mariota','QB','Tennessee Titans',0,14),(583556778,'Chris Matthews','WR','Baltimore Ravens',0,8),(591405117,'EJ Manuel','QB','Buffalo Bills',0,3),(593689883,'Tom Savage','QB','Houston Texans',0,11),(595436118,'Alfred Morris','RB','Washington Redskins',0,21),(597754553,'McLeod Bethel-Thompson','QB','Miami Dolphins',0,4),(598114778,'Shayne Graham','K','Atlanta Falcons',0,32),(598935771,'Robert Griffin','QB','Washington Redskins',0,21),(599428174,'Jon Kitna','QB','Dallas Cowboys',0,24),(606691322,'Garrett Gilbert','QB','Detroit Lions',0,28),(607033299,'Logan Thomas','QB','Miami Dolphins',0,4),(607499803,'Blake Annen','TE','Buffalo Bills',0,3),(609366551,'DeMarco Murray','RB','Tennessee Titans',0,14),(612033532,'Blake Bortles','QB','Jacksonville Jaguars',0,13),(623271566,'Tevin Reese','WR','Cincinnati Bengals',0,6),(624253609,'Seth Roberts','WR','Oakland Raiders',0,18),(632441006,'Damien Williams','RB','Miami Dolphins',0,4),(633515855,'Brenton Bersin','WR','Carolina Panthers',0,31),(653309513,'Brandon Stokley','WR','Baltimore Ravens',0,8),(654865161,'Cordarrelle Patterson','WR','Minnesota Vikings',0,26),(658513081,'Chris Conley','WR','Kansas City Chiefs',0,17),(659276106,'Kerwynn Williams','RB','Arizona Cardinals',0,36),(666186264,'Scott Chandler','TE','New England Patriots',0,1),(670995120,'Marques Colston','WR','New Orleans Saints',0,33),(671873415,'Cierre Wood','RB','Buffalo Bills',0,3),(671960114,'G.J. Kinne','QB','Philadelphia Eagles',0,22),(673434996,'Keith Mumphery','WR','Houston Texans',0,11),(678007476,'Stevan Ridley','RB','New York Jets',0,2),(678956690,'Jake Stoneburner','TE','Miami Dolphins',0,4),(679323009,'Lance Kendricks','TE','St. Louis Rams',0,38),(686996998,'Chris Pantale','TE','Chicago Bears',0,29),(689112035,'Devin Smith','WR','New York Jets',0,2),(691989819,'Eric Ebron','TE','Detroit Lions',0,28),(699391171,'Bruce Ellington','WR','San Francisco 49ers',0,39),(699397263,'Ryan Succop','K','Tennessee Titans',0,14),(702651482,'Chris Owusu','WR','New York Jets',0,2),(708228192,'Chris Ivory','RB','New York Jets',0,2),(709368476,'Chris Hogan','WR','New England Patriots',0,1),(710208211,'Chris Gragg','TE','Buffalo Bills',0,3),(711306036,'Adam Humphries','WR','Tampa Bay Buccaneers',0,34),(716486801,'Javorius Allen','RB','Baltimore Ravens',0,8),(717829633,'Fozzy Whittaker','RB','Carolina Panthers',0,31),(717958125,'Ryan Fitzpatrick','QB','New York Jets',0,2),(721415818,'Aaron Dobson','WR','New England Patriots',0,1),(726772533,'Jameis Winston','QB','Tampa Bay Buccaneers',0,34),(728271580,'Justin Blackmon','WR','Jacksonville Jaguars',0,13),(729423920,'Randall Cobb','WR','Green Bay Packers',0,27),(734980434,'Josh Robinson','RB','Indianapolis Colts',0,12),(736257714,'Chandler Catanzaro','K','Arizona Cardinals',0,36),(737780969,'DeAndre Smelter','WR','San Francisco 49ers',0,39),(738496108,'Visanthe Shiancoe','TE','Tennessee Titans',0,14),(744804855,'Quan Bray','RB','Indianapolis Colts',0,12),(751621970,'Zac Stacy','RB','New York Jets',0,2),(753217265,'Martellus Bennett','TE','Chicago Bears',0,29),(754174500,'Stepfan Taylor','RB','Arizona Cardinals',0,36),(758143902,'Doug Martin','RB','Tampa Bay Buccaneers',0,34),(766490902,'Chris Manhertz','TE','New Orleans Saints',0,33),(769965267,'Vernon Davis','TE','Denver Broncos',0,16),(781411688,'Eddie Royal','WR','Chicago Bears',0,29),(783593414,'Troy Niklas','TE','Arizona Cardinals',0,36),(784124816,'Adam Vinatieri','K','Indianapolis Colts',0,12),(792769459,'George Winn','RB','Detroit Lions',0,28),(793833674,'Christine Michael','RB','Seattle Seahawks',0,37),(795665623,'Julian Edelman','WR','New England Patriots',0,1),(798362603,'Russell Shepard','WR','Tampa Bay Buccaneers',0,34),(800542184,'Brandon Tate','WR','Cincinnati Bengals',0,6),(804195021,'Michael Burton','RB','Detroit Lions',0,28),(807941733,'Brandon Coleman','WR','New Orleans Saints',0,33),(811466689,'DiAndre Campbell','WR','San Francisco 49ers',0,39),(819882415,'Tyler Eifert','TE','Cincinnati Bengals',0,6),(820613672,'Duke Johnson Jr.','RB','Cleveland Browns',0,9),(826657045,'Mike Evans','WR','Tampa Bay Buccaneers',0,34),(828186151,'Mike Davis','RB','San Francisco 49ers',0,39),(829842340,'Jeff Janis','WR','Green Bay Packers',0,27),(830575838,'Santana Moss','WR','Washington Redskins',0,21),(830586049,'Nelson Agholor','WR','Philadelphia Eagles',0,22),(842559116,'Terron Ward','RB','Atlanta Falcons',0,32),(843074213,'Malcolm Brown','RB','St. Louis Rams',0,38),(843669514,'Bryan Walters','WR','Jacksonville Jaguars',0,13),(843772219,'Vince Mayle','WR','Dallas Cowboys',0,24),(843930660,'Darrel Young','RB','Washington Redskins',0,21),(847631326,'Gerald Christian','TE','Arizona Cardinals',0,36),(849014210,'Doug Baldwin','WR','Seattle Seahawks',0,37),(853094309,'Steve Smith Sr.','WR','Baltimore Ravens',0,8),(854893498,'Garrett Grayson','QB','New Orleans Saints',0,33),(859586330,'Andre Williams','RB','New York Giants',0,23),(870344144,'Joshua Bellamy','WR','Chicago Bears',0,29),(873908813,'Tyler Clutts','RB','Dallas Cowboys',0,24),(875683250,'Brett Hundley','QB','Green Bay Packers',0,27),(877969462,'Trevor Siemian','QB','Denver Broncos',0,16),(878164097,'Greg Jennings','WR','Miami Dolphins',0,4),(883128813,'Jason Avant','WR','Kansas City Chiefs',0,17),(883886161,'Kendall Hunter','RB','New Orleans Saints',0,33),(894304405,'Jason Myers','K','Jacksonville Jaguars',0,13),(894448873,'Taylor Gabriel','WR','Cleveland Browns',0,9),(895136056,'Brandon McManus','K','Denver Broncos',0,16),(899035135,'Matt Spaeth','TE','Pittsburgh Steelers',0,7),(901465900,'Kenny Hilliard','RB','Houston Texans',0,11),(903740847,'Kai Forbath','K','New Orleans Saints',0,33),(911519666,'Jesse James','TE','Pittsburgh Steelers',0,7),(913223194,'Darren Fells','TE','Arizona Cardinals',0,36),(929218633,'Brandin Cooks','WR','New Orleans Saints',0,33),(936967254,'Rian Lindell','K','Tampa Bay Buccaneers',0,34),(944576602,'Asante Cleveland','TE','San Diego Chargers',0,19),(945931520,'Brandon Lloyd','WR','San Francisco 49ers',0,39),(947232512,'Brandon Myers','TE','Tampa Bay Buccaneers',0,34),(952610249,'Myles White','WR','New York Giants',0,23),(954144379,'Dan Bailey','K','Dallas Cowboys',0,24),(954320824,'Randy Bullock','K','New York Jets',0,2),(954716682,'Rashad Ross','WR','Washington Redskins',0,21),(956964446,'Stephen Gostkowski','K','New England Patriots',0,1),(959545345,'Austin Johnson','RB','New Orleans Saints',0,33),(965738030,'John Crockett','RB','Green Bay Packers',0,27),(982614503,'Vance McDonald','TE','San Francisco 49ers',0,39),(983061586,'Matt Prater','K','Detroit Lions',0,28),(985094575,'Aaron Murray','QB','Kansas City Chiefs',0,17),(988509165,'Daniel Fells','TE','New York Giants',0,23),(991443300,'Collin Mooney','RB','Atlanta Falcons',0,32),(992937541,'Philip Rivers','QB','San Diego Chargers',0,19),(996979550,'Kyle Miller','TE','San Diego Chargers',0,19),(998440703,'Jacquizz Rodgers','RB','Chicago Bears',0,29),(999751024,'Dylan Thompson','QB','San Francisco 49ers',0,39),(999932695,'Jonathan Stewart','RB','Carolina Panthers',0,31),(1002397491,'Billy Cundiff','K','Cleveland Browns',0,9),(1005022973,'Kapri Bibbs','RB','Denver Broncos',0,16),(1008115047,'Derek Carr','QB','Oakland Raiders',0,18),(1009716509,'Jeremy Ross','WR','Oakland Raiders',0,18),(1010020409,'Jeremy Hill','RB','Cincinnati Bengals',0,6),(1010202572,'Ben Roethlisberger','QB','Pittsburgh Steelers',0,7),(1011506844,'Maxx Williams','TE','Baltimore Ravens',0,8),(1013489401,'Tony Romo','QB','Dallas Cowboys',0,24),(1015898779,'Zach Sudfeld','TE','New York Jets',0,2),(1017879805,'Graham Gano','K','Carolina Panthers',0,31),(1020290644,'Kyle Juszczyk','RB','Baltimore Ravens',0,8),(1024524312,'Brandon Bolden','RB','New England Patriots',0,1),(1024618548,'Nate Washington','WR','Houston Texans',0,11),(1024984289,'Justin Hardy','WR','Atlanta Falcons',0,32),(1049391166,'Alan Bonner','WR','Houston Texans',0,11),(1049594276,'Kenny Bell','WR','Tampa Bay Buccaneers',0,34),(1049971276,'Nick Foles','QB','St. Louis Rams',0,38),(1053652664,'Nick Boyle','TE','Baltimore Ravens',0,8),(1055736302,'Virgil Green','TE','Denver Broncos',0,16),(1056663545,'E.J. Bibbs','TE','Cleveland Browns',0,9),(1060605273,'Danny Amendola','WR','New England Patriots',0,1),(1070057033,'Ben Koyack','TE','Jacksonville Jaguars',0,13),(1075276558,'Melvin Gordon','RB','San Diego Chargers',0,19),(1089034981,'Lance Moore','WR','Detroit Lions',0,28),(1100558047,'Tyrod Taylor','QB','Buffalo Bills',0,3),(1108089564,'Alfred Blue','RB','Houston Texans',0,11),(1108425562,'Charcandrick West','RB','Kansas City Chiefs',0,17),(1119466174,'Kevin Walter','WR','Tennessee Titans',0,14),(1129772759,'Cameron Meredith','WR','Chicago Bears',0,29),(1133373054,'Delanie Walker','TE','Tennessee Titans',0,14),(1136731853,'Travis Benjamin','WR','San Diego Chargers',0,19),(1139003006,'Antonio Brown','WR','Pittsburgh Steelers',0,7),(1142796707,'Ricky Stanzi','QB','New York Giants',0,23),(1149910554,'Rishard Matthews','WR','Tennessee Titans',0,14),(1151974288,'Anthony McCoy','TE','Seattle Seahawks',0,37),(1166701681,'Riley Cooper','WR','Philadelphia Eagles',0,22),(1171638132,'Ben Hartsock','TE','Carolina Panthers',0,31),(1172600289,'Isaiah Pead','RB','Pittsburgh Steelers',0,7),(1177704228,'Greg Jones','RB','New Orleans Saints',0,33),(1177785133,'Dan Carpenter','K','Buffalo Bills',0,3),(1182237260,'Greg Olsen','TE','Carolina Panthers',0,31),(1191294875,'Derrick Coleman','RB','Seattle Seahawks',0,37),(1194766123,'Nathan Palmer','WR','Chicago Bears',0,29),(1208566701,'Kendall Gaskins','RB','San Francisco 49ers',0,39),(1209566809,'Armon Binns','WR','Kansas City Chiefs',0,17),(1217837271,'DeAndrew White','WR','San Francisco 49ers',0,39),(1219872989,'Drew Brees','QB','New Orleans Saints',0,33),(1221912022,'Eddie Lacy','RB','Green Bay Packers',0,27),(1225226728,'Josh Boyce','WR','New England Patriots',0,1),(1225307120,'Josh Brown','K','New York Giants',0,23),(1226937789,'Bilal Powell','RB','New York Jets',0,2),(1227898271,'Joseph Fauria','TE','Arizona Cardinals',0,36),(1234033311,'Josh Lambo','K','San Diego Chargers',0,19),(1234410103,'Niles Paul','TE','Washington Redskins',0,21),(1242749754,'Frankie Hammond','WR','Kansas City Chiefs',0,17),(1242821107,'James White','RB','New England Patriots',0,1),(1245284748,'Marqise Lee','WR','Jacksonville Jaguars',0,13),(1251154603,'Marshawn Lynch','RB','Seattle Seahawks',0,37),(1252732010,'Nate Burleson','WR','Cleveland Browns',0,9),(1252830538,'Dominique Jones','TE','Denver Broncos',0,16),(1254613989,'James Jones','WR','Green Bay Packers',0,27),(1256821184,'Matt Ryan','QB','Atlanta Falcons',0,32),(1256877844,'James Hanna','TE','Dallas Cowboys',0,24),(1261490899,'James Casey','TE','Denver Broncos',0,16),(1271850895,'Darren Waller','WR','Baltimore Ravens',0,8),(1273151028,'Dion Lewis','RB','New England Patriots',0,1),(1276044811,'Stevie Johnson','WR','San Diego Chargers',0,19),(1283575612,'B.J. Daniels','WR','Houston Texans',0,11),(1287675937,'DeAngelo Williams','RB','Pittsburgh Steelers',0,7),(1291948748,'Andrew Franks','K','Miami Dolphins',0,4),(1292170816,'Lamar Miller','RB','Houston Texans',0,11),(1297021964,'Tyler Bray','QB','Kansas City Chiefs',0,17),(1299434522,'Chase Reynolds','RB','St. Louis Rams',0,38),(1302679486,'Bishop Sankey','RB','Tennessee Titans',0,14),(1304154831,'Terrence Magee','RB','Baltimore Ravens',0,8),(1304521637,'Brian Hoyer','QB','Houston Texans',0,11),(1307146884,'Ryan Williams','RB','Dallas Cowboys',0,24),(1308982214,'Jack Doyle','TE','Indianapolis Colts',0,12),(1312996627,'Brian Quick','WR','St. Louis Rams',0,38),(1315381944,'Konrad Reuland','TE','Baltimore Ravens',0,8),(1319006484,'Calvin Johnson','WR','Detroit Lions',0,28),(1321946146,'Chris Johnson','RB','Arizona Cardinals',0,36),(1324158594,'Larry Donnell','TE','New York Giants',0,23),(1324183764,'Emmanuel Sanders','WR','Denver Broncos',0,16),(1326853046,'Brad Sorensen','QB','San Diego Chargers',0,19),(1327692827,'Rashad Greene','WR','Jacksonville Jaguars',0,13),(1348162299,'Justin Tucker','K','Baltimore Ravens',0,8),(1352562719,'Kevin Norwood','WR','Carolina Panthers',0,31),(1355180445,'Brittan Golden','WR','Arizona Cardinals',0,36),(1363420179,'Ameer Abdullah','RB','Detroit Lions',0,28),(1365855470,'Blake Bell','TE','San Francisco 49ers',0,39),(1372807925,'Jalen Saunders','WR','New England Patriots',0,1),(1374483228,'Randall Telfer','TE','Cleveland Browns',0,9),(1378928664,'David Cobb','RB','Tennessee Titans',0,14),(1380319603,'Ryan Mathews','RB','Philadelphia Eagles',0,22),(1380560343,'Freddie Martino','WR','Philadelphia Eagles',0,22),(1383172694,'Matt Bryant','K','Atlanta Falcons',0,32),(1388208752,'Jermaine Gresham','TE','Arizona Cardinals',0,36),(1392247362,'Knile Davis','RB','Kansas City Chiefs',0,17),(1397233380,'Miles Austin','WR','Philadelphia Eagles',0,22),(1398853477,'Kirk Cousins','QB','Washington Redskins',0,21),(1401162989,'Zac Dysert','QB','Miami Dolphins',0,4),(1404173453,'Victor Cruz','WR','New York Giants',0,23),(1405828338,'Ronnie Hillman','RB','Denver Broncos',0,16),(1411354813,'Matt Asiata','RB','Minnesota Vikings',0,26),(1412123036,'Jeff Cumberland','TE','New York Jets',0,2),(1419398712,'Theo Riddick','RB','Detroit Lions',0,28),(1420411107,'Ricardo Lockette','WR','Seattle Seahawks',0,37),(1422411845,'Travis Coons','K','Cleveland Browns',0,9),(1426330632,'Dion Sims','TE','Miami Dolphins',0,4),(1427179097,'Will Johnson','RB','Pittsburgh Steelers',0,7),(1429498865,'Travis Kelce','TE','Kansas City Chiefs',0,17),(1431226760,'Allen Reisner','TE','Baltimore Ravens',0,8),(1434122314,'Russell Wilson','QB','Seattle Seahawks',0,37),(1435081873,'Pierre Garcon','WR','Washington Redskins',0,21),(1440792667,'Rashad Jennings','RB','New York Giants',0,23),(1443869743,'Devonta Freeman','RB','Atlanta Falcons',0,32),(1450401536,'Seneca Wallace','QB','Green Bay Packers',0,27),(1453201551,'Terrance West','RB','Baltimore Ravens',0,8),(1457308183,'Levine Toilolo','TE','Atlanta Falcons',0,32),(1457327732,'Justin Perillo','TE','Green Bay Packers',0,27),(1458808460,'Justin Forsett','RB','Baltimore Ravens',0,8),(1459554203,'Davante Adams','WR','Green Bay Packers',0,27),(1460988142,'Geoff Swaim','TE','Dallas Cowboys',0,24),(1464560417,'Tim Hightower','RB','New Orleans Saints',0,33),(1479680869,'Roddy White','WR','Atlanta Falcons',0,32),(1482288467,'Latavius Murray','RB','Oakland Raiders',0,18),(1484123446,'Larry Fitzgerald','WR','Arizona Cardinals',0,36),(1487775889,'Andre Johnson','WR','Indianapolis Colts',0,12),(1493833022,'Allen Robinson','WR','Jacksonville Jaguars',0,13),(1495067439,'Danny Woodhead','RB','San Diego Chargers',0,19),(1497232398,'Jordan Reed','TE','Washington Redskins',0,21),(1502573073,'Lucky Whitehead','WR','Dallas Cowboys',0,24),(1508161468,'Cecil Shorts III','WR','Houston Texans',0,11),(1510074210,'Fred Jackson','RB','Seattle Seahawks',0,37),(1515831117,'Jared Abbrederis','WR','Green Bay Packers',0,27),(1520345116,'Jimmy Graham','TE','Seattle Seahawks',0,37),(1523571666,'Joe Webb','QB','Carolina Panthers',0,31),(1527172584,'Jonas Gray','RB','Jacksonville Jaguars',0,13),(1530529337,'Zach Ertz','TE','Philadelphia Eagles',0,22),(1534636980,'Allen Hurns','WR','Jacksonville Jaguars',0,13),(1534995371,'Tyler Varga','RB','Indianapolis Colts',0,12),(1544650550,'Tyler Kroft','TE','Cincinnati Bengals',0,6),(1547803288,'Coby Fleener','TE','New Orleans Saints',0,33),(1549115464,'Tyrell Williams','WR','San Diego Chargers',0,19),(1552299375,'Anthony Fasano','TE','Tennessee Titans',0,14),(1557244628,'Kennard Backman','TE','Green Bay Packers',0,27),(1563716679,'Josh Hill','TE','New Orleans Saints',0,33),(1563728019,'Josh Huff','WR','Philadelphia Eagles',0,22),(1571239471,'Jeremy Langford','RB','Chicago Bears',0,29),(1572256983,'Frank Gore','RB','Indianapolis Colts',0,12),(1581725688,'Sammy Watkins','WR','Buffalo Bills',0,3),(1582309414,'Gavin Escobar','TE','Dallas Cowboys',0,24),(1583102100,'Dwayne Allen','TE','Indianapolis Colts',0,12),(1596465196,'Bennie Fowler','WR','Denver Broncos',0,16),(1600102626,'Michael Hoomanawanui','TE','New Orleans Saints',0,33),(1601159954,'Amari Cooper','WR','Oakland Raiders',0,18),(1603565936,'Jaron Brown','WR','Arizona Cardinals',0,36),(1604868534,'Marcus Thigpen','RB','Buffalo Bills',0,3),(1613818398,'Rodney Smith','WR','Dallas Cowboys',0,24),(1616249864,'Brandon Marshall','WR','New York Jets',0,2),(1619418713,'Kassim Osgood','WR','San Francisco 49ers',0,39),(1627550175,'Taiwan Jones','RB','Oakland Raiders',0,18),(1633012221,'Luke Willson','TE','Seattle Seahawks',0,37),(1636915068,'Andrew Luck','QB','Indianapolis Colts',0,12),(1637032544,'Geremy Davis','WR','New York Giants',0,23),(1637170725,'Owen Daniels','TE','Denver Broncos',0,16),(1641088319,'Dwayne Harris','WR','New York Giants',0,23),(1644400561,'Mike Wallace','WR','Baltimore Ravens',0,8),(1644863985,'Rex Grossman','QB','Atlanta Falcons',0,32),(1645548339,'Saalim Hakim','WR','Kansas City Chiefs',0,17),(1646009805,'Jarvis Landry','WR','Miami Dolphins',0,4),(1646872033,'Todd Gurley','RB','St. Louis Rams',0,38),(1648872825,'Mychal Rivera','TE','Oakland Raiders',0,18),(1653048704,'Marcel Reece','RB','Oakland Raiders',0,18),(1655915956,'Benjamin Cunningham','RB','St. Louis Rams',0,38),(1657820715,'J.J. Nelson','WR','Arizona Cardinals',0,36),(1671919407,'Vick Ballard','RB','Indianapolis Colts',0,12),(1673367686,'Quinton Patton','WR','San Francisco 49ers',0,39),(1681631581,'Rob Gronkowski','TE','New England Patriots',0,1),(1685561721,'Michael Crabtree','WR','Oakland Raiders',0,18),(1685877871,'Phillip Supernaw','TE','Tennessee Titans',0,14),(1688445111,'David Nelson','WR','Pittsburgh Steelers',0,7),(1688537687,'Brandon Bostick','TE','Minnesota Vikings',0,26),(1689135123,'TJ Jones','WR','Detroit Lions',0,28),(1691375761,'Justin Hunter','WR','Tennessee Titans',0,14),(1696294805,'Wes Welker','WR','St. Louis Rams',0,38),(1700536921,'Jamison Crowder','WR','Washington Redskins',0,21),(1701763340,'Plaxico Burress','WR','Pittsburgh Steelers',0,7),(1704944148,'Colin Kaepernick','QB','San Francisco 49ers',0,39),(1705016069,'Brian Tyms','WR','New England Patriots',0,1),(1710986769,'Jacoby Jones','WR','Pittsburgh Steelers',0,7),(1714386500,'DeVante Parker','WR','Miami Dolphins',0,4),(1724787963,'Trey Watts','RB','St. Louis Rams',0,38),(1731473426,'Jared Cook','TE','St. Louis Rams',0,38),(1732806874,'Keenan Allen','WR','San Diego Chargers',0,19),(1737976412,'Stedman Bailey','WR','St. Louis Rams',0,38),(1739161346,'Bruce Miller','RB','San Francisco 49ers',0,39),(1739207919,'Ronnie Brown','RB','San Diego Chargers',0,19),(1739404643,'Zach Miller','TE','Seattle Seahawks',0,37),(1741366708,'Robert Turbin','RB','Indianapolis Colts',0,12),(1741819267,'Richard Rodgers','TE','Green Bay Packers',0,27),(1751098469,'Matthew Stafford','QB','Detroit Lions',0,28),(1753328152,'Dri Archer','RB','New York Jets',0,2),(1753916374,'Ty Montgomery','WR','Green Bay Packers',0,27),(1758272462,'Dres Anderson','WR','San Francisco 49ers',0,39),(1759250115,'Kyle Brindza','K','New York Jets',0,2),(1759938223,'Phillip Dorsett','WR','Indianapolis Colts',0,12),(1764101126,'Marcedes Lewis','TE','Jacksonville Jaguars',0,13),(1765440684,'Jorvorskie Lane','RB','Tampa Bay Buccaneers',0,34),(1767365493,'Khiry Robinson','RB','New York Jets',0,2),(1767448703,'Alex Smith','QB','Kansas City Chiefs',0,17),(1776846061,'Rod Streater','WR','Kansas City Chiefs',0,17),(1782179700,'Gus Johnson','RB','Atlanta Falcons',0,32),(1783491131,'Alex Bayer','TE','St. Louis Rams',0,38),(1787366969,'Kelvin Benjamin','WR','Carolina Panthers',0,31),(1798918035,'Thomas Rawls','RB','Seattle Seahawks',0,37),(1801671467,'Clay Harbor','TE','Jacksonville Jaguars',0,13),(1805418614,'Jerome Felton','RB','Buffalo Bills',0,3),(1805972694,'Marc Mariani','WR','Chicago Bears',0,29),(1810801056,'Dallas Clark','TE','Baltimore Ravens',0,8),(1814005795,'Deonte Thompson','WR','Chicago Bears',0,29),(1819660902,'Johnny Manziel','QB','Cleveland Browns',0,9),(1820384852,'Marvin Jones','WR','Detroit Lions',0,28),(1821931048,'Kenny Britt','WR','St. Louis Rams',0,38),(1822319436,'Lorenzo Taliaferro','RB','Baltimore Ravens',0,8),(1828217343,'Tevin Coleman','RB','Atlanta Falcons',0,32),(1830480315,'Michael Floyd','WR','Arizona Cardinals',0,36),(1832234640,'Michael Hill*','RB','Dallas Cowboys',0,24),(1841858781,'Jerricho Cotchery','WR','Carolina Panthers',0,31),(1841871463,'Patrick DiMarco','RB','Atlanta Falcons',0,32),(1847606260,'A.J. Green','WR','Cincinnati Bengals',0,6),(1847680176,'Eli Manning','QB','New York Giants',0,23),(1850551168,'Andre Ellington','RB','Arizona Cardinals',0,36),(1854789202,'Tyler Lockett','WR','Seattle Seahawks',0,37),(1856390729,'Keith Wenning','QB','Cincinnati Bengals',0,6),(1858925954,'Jordan Norwood','WR','Denver Broncos',0,16),(1867043287,'Steven Hauschka','K','Seattle Seahawks',0,37),(1877278352,'Zach Hocker','K','St. Louis Rams',0,38),(1881748855,'Brian Hartline','WR','Cleveland Browns',0,9),(1883881425,'Cody Latimer','WR','Denver Broncos',0,16),(1887207316,'Seantavius Jones','WR','New Orleans Saints',0,33),(1887264520,'Aaron Ripkowski','RB','Green Bay Packers',0,27),(1894973472,'Senorise Perry','RB','Chicago Bears',0,29),(1899448668,'Tyler Gaffney','RB','New England Patriots',0,1),(1900826041,'Jarryd Hayne','RB','San Francisco 49ers',0,39),(1901063592,'Charles Sims','RB','Tampa Bay Buccaneers',0,34),(1901537731,'Charles Clay','TE','Buffalo Bills',0,3),(1902802048,'RaShaun Allen','TE','New Orleans Saints',0,33),(1905297880,'Tom Brady','QB','New England Patriots',0,1),(1910525160,'Shane Vereen','RB','New York Giants',0,23),(1913288720,'Cole Beasley','WR','Dallas Cowboys',0,24),(1917750771,'Quincy Enunwa','WR','New York Jets',0,2),(1917760631,'Brandon Pettigrew','TE','Detroit Lions',0,28),(1918979186,'Dexter McCluster','WR','Tennessee Titans',0,14),(1919050974,'Kenbrell Thompkins','WR','New York Jets',0,2),(1920569032,'Arthur Lynch','TE','New York Jets',0,2),(1930364381,'Kellen Moore','QB','Dallas Cowboys',0,24),(1933896617,'Ryan Griffin','TE','Houston Texans',0,11),(1934413482,'Jay Ajayi','RB','Miami Dolphins',0,4),(1937016185,'Devin Funchess','WR','Carolina Panthers',0,31),(1937237165,'DeSean Jackson','WR','Washington Redskins',0,21),(1939086682,'Kellen Davis','TE','New York Jets',0,2),(1945014838,'Andre Debose','WR','Oakland Raiders',0,18),(1950831601,'Derek Carrier','TE','Washington Redskins',0,21),(1961233204,'Nic Jacobs','TE','Jacksonville Jaguars',0,13),(1966098196,'Kamar Aiken','WR','Baltimore Ravens',0,8),(1966936255,'Adrian Peterson','RB','Minnesota Vikings',0,26),(1969820504,'Jim Dray','TE','Cleveland Browns',0,9),(1980476774,'Crockett Gillmore','TE','Baltimore Ravens',0,8),(1986872942,'Tavon Austin','WR','St. Louis Rams',0,38),(1989419639,'Jacob Tamme','TE','Atlanta Falcons',0,32),(1994303247,'Sam Bradford','QB','Philadelphia Eagles',0,22),(1996700295,'Greg Zuerlein','K','St. Louis Rams',0,38),(2000787101,'Sammie Coates','WR','Pittsburgh Steelers',0,7),(2003306326,'Isaiah Burse','WR','San Diego Chargers',0,19),(2006561197,'Spencer Ware','RB','Kansas City Chiefs',0,17),(2007320732,'Austin Seferian-Jenkins','TE','Tampa Bay Buccaneers',0,34),(2010007399,'Demaryius Thomas','WR','Denver Broncos',0,16),(2012185356,'Clive Walford','TE','Oakland Raiders',0,18),(2019212446,'Denard Robinson','RB','Jacksonville Jaguars',0,13),(2021326262,'MarQueis Gray','TE','Buffalo Bills',0,3),(2024927361,'Carson Palmer','QB','Arizona Cardinals',0,36),(2027205413,'Tommy Bohanon','RB','New York Jets',0,2),(2036014479,'Anthony Sherman','RB','Kansas City Chiefs',0,17),(2048423244,'Mason Crosby','K','Green Bay Packers',0,27),(2049331308,'Darren McFadden','RB','Dallas Cowboys',0,24),(2057351967,'Bryce Brown','RB','Seattle Seahawks',0,37),(2063776364,'Julian Talley','WR','New York Giants',0,23),(2069062220,'Andre Holmes','WR','Oakland Raiders',0,18),(2069370880,'Jason Witten','TE','Dallas Cowboys',0,24),(2069461948,'Ed Dickson','TE','Carolina Panthers',0,31),(2071941970,'Keshawn Martin','WR','New England Patriots',0,1),(2072546703,'Percy Harvin','WR','Buffalo Bills',0,3),(2073686320,'Alshon Jeffery','WR','Chicago Bears',0,29),(2078216902,'Joique Bell','RB','Detroit Lions',0,28),(2085418570,'Jalston Fowler','RB','Tennessee Titans',0,14),(2088814997,'Rueben Randle','WR','New York Giants',0,23),(2093964375,'Greg Little','WR','Cincinnati Bengals',0,6),(2104548445,'Austin Davis','QB','Cleveland Browns',0,9),(2104981109,'Ted Ginn Jr.','WR','Carolina Panthers',0,31),(2105770291,'Garrett Graham','TE','Houston Texans',0,11),(2107891729,'LaMike James','RB','Miami Dolphins',0,4),(2121645352,'Albert Wilson','WR','Kansas City Chiefs',0,17),(2126378589,'Phil Dawson','K','San Francisco 49ers',0,39),(2127529417,'Michael Campanaro','WR','Baltimore Ravens',0,8),(2129726470,'Cameron Artis-Payne','RB','Carolina Panthers',0,31),(2132558875,'T.J. Yeldon','RB','Jacksonville Jaguars',0,13),(2136972104,'Robert Woods','WR','Buffalo Bills',0,3),(2142195044,'Cam Newton','QB','Carolina Panthers',0,31),(2142363812,'Glenn Winston','RB','Cleveland Browns',0,9),(2143737749,'Brent Celek','TE','Philadelphia Eagles',0,22);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-29  2:04:29
