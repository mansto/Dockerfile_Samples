FROM microsoft/mssql-server-windows-developer

COPY files/ .

ENV ACCEPT_EULA Y
ENV sa_password "mysqlserversapwd123AE?"
ENV  attach_dbs="[]"

RUN PowerShell /Build.ps1

# Use sqlcmd to connect to the SQL instance within the container
# RUN CMD /opt/mssql-tools/bin/sqlcmd -S . -U sa -P $env:sa_password

# Runs a SQL script to attach the database
# RUN sqlcmd -i init.sql
#RUN sqlcmd -q "CREATE DATABASE MyDb ON (FILENAME = 'mydb.mdf') LOG ON(FILENAME = 'mydb_log.ldf') FOR ATTACH"
#RUN CMD .\start -sa_password $env:sa_password -ACCEPT_EULA $env:ACCEPT_EULA -attach_dbs \"$env:attach_dbs\" -Verbose


HEALTHCHECK CMD [ "sqlcmd", "-Q", "select 1" ]
CMD .\start -sa_password $env:sa_password -ACCEPT_EULA $env:ACCEPT_EULA -attach_dbs \"$env:attach_dbs\" -Verbose