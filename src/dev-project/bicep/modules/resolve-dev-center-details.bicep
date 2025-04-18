targetScope = 'resourceGroup'

param devCenterName string

resource dc 'Microsoft.DevCenter/devcenters@2024-10-01-preview' existing = {
  name: devCenterName
}

output devCenterLocation string = dc.location
output devCenterId string = dc.id
output enableCatalogsPerProject bool = dc.properties.projectCatalogSettings.catalogItemSyncEnableStatus == 'Enabled' ? true : false
