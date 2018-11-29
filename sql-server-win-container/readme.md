# Docker commands

## Build Container
docker build --rm -f "sql-server-win-container\Dockerfile" -t sql-server-win-container:latest sql-server-win-container

## Run Container
docker run -d -p 1433:1433 --name sql --ip 172.29.39.203 sql-server-win-container

## Kill Container
docker kill sql

## Remove Container
docker container rm sql

# Test
## Connect to sql server
docker exec -it sql C:\\Program Files\\Microsoft SQL Server\\110\\Tools\\Binn\\sqlcmd -S 172.29.39.203 -U sa -P mysqlserversapwd123AE?