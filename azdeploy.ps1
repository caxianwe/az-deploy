# az group create --name 'my-devops-dev' --location eastus

az bicep decompile --file arm.json --force

az deployment group create --resource-group 'my-devops-dev' --template-file 'buildout.bicep' --parameters 'Parameters/buildout.parameters.dev.json'
