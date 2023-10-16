@description('Name of the Service Bus namespace')
param serviceBusNamespaceName string

@description('Name of the Topic')
param serviceBusTopicName string

@description('Name of the Subscription of the Topic')
param serviceBusSubscriptionName string

@description('Location for all resources.')
param location string = resourceGroup().location

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2022-10-01-preview' = {
  name: serviceBusNamespaceName
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {}
}

resource serviceBusTopic 'Microsoft.ServiceBus/namespaces/topics@2022-10-01-preview' = {
  name: serviceBusTopicName
  parent: serviceBusNamespace
  properties: {}
}

resource serviceBusTopicSubscription 'Microsoft.ServiceBus/namespaces/topics/Subscriptions@2022-10-01-preview' = {
  name: serviceBusSubscriptionName
  parent: serviceBusTopic
  properties: {}
}
