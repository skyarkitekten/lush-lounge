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

1. Create IaC Files

1. Deploy Iac

## Web App

1. Create Web Directory

   ```bash
   mkdir web
   cd web
   ```

1. Create React with Vite

   ```bash
   npm create vite@latest
   ```

1. Update Deployment
