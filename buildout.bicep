@description('Name of the Service Bus namespace')
param serviceBusNamespaceName string

@description('Name of the Topic')
param serviceBusTopicName string

@description('Name of the Subscription of the Topic')
param serviceBusSubscriptionName string

@description('Location for all resources.')
param resourceGroupLocation string = resourceGroup().location

module serviceBus 'Templates/serviceBus.bicep' = {
  name: 'serviceBusDeploy'
  params: {
    location: resourceGroupLocation
    serviceBusNamespaceName: serviceBusNamespaceName
    serviceBusTopicName: serviceBusTopicName
    serviceBusSubscriptionName: serviceBusSubscriptionName
  }
}
