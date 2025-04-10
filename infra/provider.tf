# 

provider "azurerm" {
  features {}

  use_oidc              = true
  client_id             = secrets.AZURE_CLIENT_ID
  subscription_id       = secrets.AZURE_SUBSCRIPTION_ID
  tenant_id             = secrets.AZURE_TENANT_ID
}
