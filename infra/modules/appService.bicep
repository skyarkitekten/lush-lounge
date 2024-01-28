param appName string
param location string
param sku string = 'F1'

resource appService 'Microsoft.Web/sites@2021-02-01' = {
  name: appName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: '${appName}-plan'
  location: location
  sku: {
    name: sku
    tier: 'Free'
  }
  properties: {
    reserved: true
  }
}

output appServiceUrl string = appService.properties.defaultHostName
