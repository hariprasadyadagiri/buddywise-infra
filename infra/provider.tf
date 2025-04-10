# 

provider "azurerm" {
  features {}

  use_oidc              = true
  client_id             = var.AZURE_CLIENT_ID
  subscription_id       = var.AZURE_SUBSCRIPTION_ID
  tenant_id             = var.AZURE_TENANT_ID
}
