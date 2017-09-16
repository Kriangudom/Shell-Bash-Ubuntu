##Python2.7
sudo apt-get install python-pip python-dev -y
##Nodejs6
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
##influxdb
wget https://dl.influxdata.com/influxdb/releases/influxdb_1.3.5_amd64.deb
sudo dpkg -i influxdb_1.3.5_amd64.deb
##kapacitor
wget https://dl.influxdata.com/kapacitor/releases/kapacitor_1.3.1_amd64.deb
sudo dpkg -i kapacitor_1.3.1_amd64.deb
##Udf systeam
pip install protobuf -y
##Node-red
sudo npm install -g --unsafe-perm node-red
