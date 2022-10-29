!#/bin/bash

az group create --name 'uday' --location 'central india'

az network vnet create --name 'fromcli' --resource-group 'qt' --address-prefixes '192.168.0.0/16' --location 'central india'

az network vnet subnet create --address-prefixes '192.168.0.0/24' --name 'subnet1' --resource-group 'qt' --vnet-name 'fromcli'

az network nsg create --name 'Nsg' --resource-group 'qt' --location 'central india'

az network nsg rule create --name 'mynsg' --nsg-name 'Nsg' --priority '100' --resource-group 'uday' --access 'Allow' --destination-port-ranges '8080' --direction 'Inbound' --protocol 'Tcp'

 az vm create --name 'aznode' --resource-group 'qt' --image 'ubuntuLTS' --admin-username 'azure' --admin-password 'devopsazure@1998'
