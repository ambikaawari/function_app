#!/bin/sh

ACR_RESOURCE_GROUP_NAME="tamopsaca232-rg"
ACR_NAME="containerRegistry00213434"

# Create a resource group to store container registry
az group create --name $ACR_RESOURCE_GROUP_NAME --location West Europe

# Create a container registry that will be where you deploy your image to
az acr create --resource-group $ACR_RESOURCE_GROUP_NAME --name $ACR_NAME --sku Basic