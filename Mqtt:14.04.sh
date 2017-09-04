#Add the mosquitto repository by given below commands
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt-get update -y
#Execute the given below command to install the Mosquitto broker package
sudo apt-get install mosquitto -y
#Install Mosquitto developer libraries to develop MQTT clients
sudo apt-get install libmosquitto-dev -y
#Execute the given below command to install Mosquitto client packages
sudo apt-get install mosquitto-clients -y
#Ensure that Mosquitto broker is running
sudo service mosquitto status 
