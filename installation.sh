rm -rf ./serb-db >> /dev/null
sudo docker pull wnameless/oracle-xe-11g-r2
git clone https://github.com/serb-book/serb-db.git
sudo docker build -t db/serb ./serb-db
sudo docker run -p 1521:1521 -p 8081:8080 --name test_booky -e ORACLE_ALLOW_REMOTE=true db/serb
