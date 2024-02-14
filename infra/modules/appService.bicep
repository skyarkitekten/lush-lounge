param name string
param location string = resourceGroup().location
param sku string = 'F1'

var resourceToken = toLower(uniqueString(name, location))

resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: '${name}-plan'
  location: location
  sku: {
    name: sku
    tier: 'Free'
  }
  properties: {
    reserved: true
  }
}

resource appService 'Microsoft.Web/sites@2021-02-01' = {
  name: '${name}-${resourceToken}'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}

output appServiceName string = appService.name
output appServiceUrl string = appService.properties.defaultHostName
