provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "buddy-wise"
    storage_account_name = "saakstfstateprod"
    container_name       = "tfstate-prod"
    key                  = "terraform.tfstate"

    client_id        = var.AZURE_CLIENT_ID
    tenant_id        = var.AZURE_TENANT_ID
    subscription_id  = var.AZURE_SUBSCRIPTION_ID
    client_secret    = var.AZURE_CLIENT_SECRET
  }
}




