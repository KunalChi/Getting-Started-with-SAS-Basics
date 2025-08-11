// Azure Bicep file to provision:
// - Azure Function App
// - Azure Key Vault (with access for the Function App)
// - Azure Storage Account (with access for the Function App)

param location string = resourceGroup().location
param functionAppName string
param storageAccountName string
param keyVaultName string
param appServicePlanName string = '${functionAppName}-plan'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}

resource appServicePlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: 'Y1'
    tier: 'Dynamic'
  }
  kind: 'functionapp'
}

resource functionApp 'Microsoft.Web/sites@2022-09-01' = {
  name: functionAppName
  location: location
  kind: 'functionapp'
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
      appSettings: [
        {
          name: 'AzureWebJobsStorage'
          value: storageAccount.properties.primaryEndpoints.blob
        }
        {
          name: 'FUNCTIONS_EXTENSION_VERSION'
          value: '~4'
        }
        {
          name: 'FUNCTIONS_WORKER_RUNTIME'
          value: 'dotnet'
        }
      ]
    }
  }
  identity: {
    type: 'SystemAssigned'
  }
  dependsOn: [
    appServicePlan
    storageAccount
  ]
}

resource keyVault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: subscription().tenantId
    accessPolicies: [
      {
        tenantId: subscription().tenantId
        objectId: functionApp.identity.principalId
        permissions: {
          secrets: [ 'get', 'list' ]
        }
      }
    ]
    enableSoftDelete: true
    enablePurgeProtection: true
  }
  dependsOn: [
    functionApp
  ]
}

output functionAppName string = functionApp.name
output keyVaultName string = keyVault.name
output storageAccountName string = storageAccount.name
