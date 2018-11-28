Invoke-Sqlcmd -InputFile init.sql `
-Database master `
-Server . `

#Invoke-Sqlcmd .\start -sa_password $env:sa_password -ACCEPT_EULA $env:ACCEPT_EULA -attach_dbs \"$env:attach_dbs\" -Verbose