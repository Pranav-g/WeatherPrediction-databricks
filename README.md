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

### Create service principle
az ad sp create-for-rbac --name "terraform-sp" --role="Contributor" --scopes="/subscriptions/YOUR_SUBSCRIPTION_ID"
export ARM_CLIENT_ID="ca8db523-c83a-41ce-9f10-5c91cd7081fb"   
export ARM_CLIENT_SECRET="fd1b9286-86d6-4bac-889e-f0f4ee06f211"   
export ARM_SUBSCRIPTION_ID="467cb0a9-133a-4189-8deb-cffb38b04535"  
export ARM_TENANT_ID="0758b839-18f8-44b3-8f22-305392279730"  

### Assign Permissions

az role assignment create --assignee ca8db523-c83a-41ce-9f10-5c91cd7081fb --role Contributor --scope /subscriptions/467cb0a9-133a-4189-8deb-cffb38b04535






