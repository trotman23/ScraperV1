# ScraperV1
a working scraper of ESPN sites the inserts into local mysql db via jdbc 
this is for iteration 1. it will continue to be improved upon. 

included is a dump of my local db in the jsoup/mysqldump folder


To build and run the scrapers, you need to have a few local dependencies. 
MySQL 5.7.1 installed
Java JRE 1.8 installed. 

NOTE: this app is sending a large number of requests to ESPN servers, so I would be wary about running it multiple times without either removing the actual connections. 
