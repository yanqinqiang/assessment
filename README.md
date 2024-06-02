# assessment

## Architect

React UI --> ASP.net API Web server --> SQL server database

## React UI
Here is the final result of the UI:
![image](https://github.com/yanqinqiang/assessment/assets/5415327/1177fa7d-b790-4b7b-b58f-02d709144fc7)

## ASP.net API Web server
It is typical ASP.net core web API, we're using the EntityFrameworkCore in the data layer to handle the SQL-related operation.

## SQL Server Database
The database tables/store procedure setup is in DbTableAndDataSetup.SQL file.

There are 2 tables:
1. ARAPJDE table, storing the main transaction data
2. The insurance table, as the name represents, contains the Insurance data.
![image](https://github.com/yanqinqiang/assessment/assets/5415327/2d8c98bd-37ac-4072-a8f9-453db140898c)

The main logic of calculation is in the SQL store procedure:
![image](https://github.com/yanqinqiang/assessment/assets/5415327/a7fca0cb-031b-49c6-9546-9a41ed8e1ad7)
