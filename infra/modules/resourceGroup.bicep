targetScope = 'subscription'

param solutionName string
param environmentName string
param resourceGroupLocation string
param tags object = {}

var resourceGroupName = '${solutionName}-${environmentName}-rg'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
  tags: tags
}

output rgName string = rg.name
output rgLocation string = rg.location
