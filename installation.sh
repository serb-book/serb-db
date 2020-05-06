#!/usr/bin/sh
echo "Assuming you are using a systemd based system"
rm -rf ./serb-db >> /dev/null
sudo docker pull wnameless/oracle-xe-11g-r2
git clone https://github.com/serb-book/serb-db.git
sudo docker build -t db/serb ./serb-db
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo docker run -p 1521:1521 -p 8081:8080 --name serb -e ORACLE_ALLOW_REMOTE=true db/serb
