rm -rf ./serb-db >> /dev/null
sudo docker pull wnameless/oracle-xe-11g-r2
git clone https://github.com/serb-book/serb-db.git
sudo docker build -t db/serb ./serb-db

