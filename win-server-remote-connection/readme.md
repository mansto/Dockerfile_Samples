# Docker commands

## Build Container
docker build --rm -f "win-server-remote-connection\Dockerfile" -t win-server-remote-connection:latest win-server-remote-connection

## Run Container
    - docker run -d --name winremote --ip 172.29.39.204 win-server-remote-connection
    - docker run -it win-server-remote-connection powershell

## Kill Container
docker kill winremote

## Remove Container
docker container rm winremote