# MiniPaas

INTRODUCTION
In this project,we built a book store service using LXC Containers
which is used to provide its customers the required book along
with rating/price as custom values.

ALGORITHM/DESIGN
We have created one Web Role and two Worker Roles. The Web Role
does load balancing and schedules the work in a Round Robin fashion
to the Worker Roles.
The MySQL server is connected to the two Worker Roles. So,when the
user makes a query for a book,the get request is converted into Restful
GET request and the Web Role schedules the query to the two Worker
Roles in a Round Robin Way which query the database and forward the
query to the output interface.
The worker roles are load balanced through the variable load_bal in the
server.php file.

EXPERIMENTAL RESULTS
The books are returned with prices/rating depending on the custom values
entered or just the booknames matching the tenantid input.
