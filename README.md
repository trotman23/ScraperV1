# ScraperV1
a working scraper of ESPN sites the inserts into local mysql db via jdbc 
This is for iteration 1. It will continue to be added upon in a different branch/repo. 

included is a dump of my local db in the jsoup/mysqldump folder


## To build and run the scrapers, you need to have a few local dependencies. 

MySQL 5.7.1 installed

Java JRE 1.8 installed. 

To view how it works, running the project in ecplise is reccommended, as that's what the development environment consisted of. It is also able to run via javac complilation and execution. It is similar to any other JDBC based application. 


###NOTE: this app is sending a large number of requests to ESPN servers. 

I would be wary about running it multiple times without removing the actual connections, which in turn would break the application. So just be careful that you do not run it too many times in a row. 
