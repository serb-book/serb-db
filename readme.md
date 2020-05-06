# serb-db 
data base container for online book store based in [wnameless/docker-oracle-xe-11g](https://github.com/wnameless/docker-oracle-xe-11g) image

# progress 
- [x] build schema in container
- [ ] fill with random data
- [ ] add serb-backend dependacies
- [ ] run serb-backend



# usage
The easiest way get your database up and running is to use `./installation.sh` or you can do as follows
## build image 
1. build (wnameless/docker-oracle-xe-11g) from [here](https://github.com/wnameless/docker-oracle-xe-11g#installationlocal)
2. build image with custom book schema with
>`sudo docker build -t db/serb .`

this will build docker image with user book and talbes from [this diagram](doc/schema_diagram.pdf)

## run container
>`sudo docker run -p 1521:1521 -p 8080:8080 --name test_booky -e ORACLE_ALLOW_REMOTE=true db/serb`

* you may change port maping if port is occupied  -p <local port>:<container port>

### connection credintials
```
hostname: localhost
port: 1521
sid: xe
username: book
password: book
```

