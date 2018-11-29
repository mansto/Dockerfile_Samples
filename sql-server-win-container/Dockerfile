FROM microsoft/mssql-server-windows-developer
#FROM microsoft/mssql-server-windows-express

COPY files/ C:\\SQLSERVER

ENV ACCEPT_EULA Y
ENV sa_password "mysqlserversapwd123AE?"
#ENV attach_dbs="[{'dbName':'MyDb','dbFiles':['C:/SQLSERVER/JetTicketDev.mdf','C:/SQLSERVER/JetTicketDev_Log.ldf']}]"
ENV attach_dbs="[{'dbName':'MyDb','dbFiles':['C:\\\\SQLSERVER\\\\JetTicketDev.mdf','C:\\\\SQLSERVER\\\\JetTicketDev_Log.ldf']}]"
HEALTHCHECK CMD [ "sqlcmd", "-Q", "select 1" ]
CMD .\start -sa_password $env:sa_password -ACCEPT_EULA $env:ACCEPT_EULA -attach_dbs \"$env:attach_dbs\" -Verbose