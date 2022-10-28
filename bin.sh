!#/bin/bash

az group create --name 'uday' --location 'westus'

az network vnet create --name 'fromcli' --resource-group 'uday' --address-prefixes '192.168.0.0/16' --location 'westus'

az network vnet subnet create --address-prefixes '192.168.0.0/24' --name 'subnet1'  --resource-group 'uday' --vnet-name 'fromcli' --network-security-group Nsg

az vm create  --resource-group 'uday'   --name 'myvm' --image 'UbuntuLTS'  --vnet-name 'fromcli' --subnet  'subnet' --generate-ssh-keys