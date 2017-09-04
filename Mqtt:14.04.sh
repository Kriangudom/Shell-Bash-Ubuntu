#Add the mosquitto repository by given below commands
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
sudo apt-get update
#Execute the given below command to install the Mosquitto broker package
sudo apt-get install mosquitto
#Install Mosquitto developer libraries to develop MQTT clients
sudo apt-get install libmosquitto-dev
#Execute the given below command to install Mosquitto client packages
sudo apt-get install mosquitto-clients
#Ensure that Mosquitto broker is running
sudo service mosquitto status 
