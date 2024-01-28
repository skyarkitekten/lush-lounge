# Notes

## Azure

1. Setup Azure Subscription

1. Create Resource Group

   ```bash
   resourceGroupName="lush-lounge-dev-rg"
   location="eastus"
   az group create --name resourceGroupName --location location
   ```

1. Create Service Principal

   ```bash
   spName="lush-lounge-sp"
   az ad sp create-for-rbac --name spName --role contributor --scopes /subscriptions/subscriptionId/resourceGroups/resourceGroupName
   ```
