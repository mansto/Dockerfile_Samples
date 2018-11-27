FROM microsoft/mssql-server-windows-developer
RUN mkdir -p  C:\\SQL
COPY files/ C:\\SQL

# Instruct docker to wait for 10 seconds (to allow SQL to initialise) and then perform a check to ensure the container is running as expected
HEALTHCHECK --interval=10s

# Use sqlcmd to connect to the SQL instance within the container
CMD /opt/mssql-tools/bin/sqlcmd -S . -U sa -P my_sql_server_sa_pwd§$123

# Runs a SQL script to attach the database
-Q "CREATE DATABASE MyDb ON (FILENAME = 'C:/SQL/mydb.mdf'),(FILENAME = 'C:/SQL/mydb_log.ldf') FOR ATTACH