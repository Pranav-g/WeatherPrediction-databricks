# WeatherPrediction-databricks
Importing data from WeatherAPI and using Azure_Databricks to process the data and predict the tomorrows temprature.

## 1. Install terraform
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update
sudo apt-get install -y terraform

### Check
terraform --verison

## 2. Install Azure
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

### Check
az version

## 3.Login Into Azure
az login --use-device-code





