# Build Container
docker build --rm -f "sql-server-win-container\Dockerfile" -t sql-server-win-container:latest sql-server-win-container

# Run Container
docker run -d -p 11433:1433 --name sql -e attach_dbs="[{'dbName':'MyDb','dbFiles':['C:/SQL/mydb.mdf','C:/SQL/mydb_log.ldf']}]" -e sa_password='my_sql_server_sa_pwd§$123'sql-server-win-container -e ACCEPT_EULA='Y' sql-server-win-container

# Test
## Connect to sql server
docker exec -it sql /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P my_sql_server_sa_pwd§$123