targetScope = 'subscription'

param resourceGroupName string
param resourceGroupLocation string
param tags object = {}

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
  tags: tags
}

output rgId string = rg.id
output rgName string = rg.name
output rgLocation string = rg.location
