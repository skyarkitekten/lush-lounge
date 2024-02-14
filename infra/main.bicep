targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the the solution which is used to generate a short unique hash used in all resources.')
param solutionName string

@minLength(1)
@description('Primary location for all resources.')
param location string

@description('Name of the environment. For example "dev", "test", or "prod". ')
@allowed([
  'dev'
  'test'
  'prod'
])
param environmentName string = 'dev'

var tags = {
  Solution: solutionName
  Environment: environmentName
}
// TODO: create rg, app service, database
