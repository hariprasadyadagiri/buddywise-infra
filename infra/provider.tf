provider "azurerm" {
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name  = "buddy-wise"
    storage_account_name = "saakstfstateprod"
    container_name       = "tfstate-prod"
    key                  = "terraform.tfstate"

    client_id        = "825b698e-807f-491b-91fe-1cddc869cef1"
    tenant_id        = "2ac9248b-50f0-4b2d-a4a6-5e6a82376bdb"
    subscription_id  = "cf13ac48-763a-4dd6-b402-af89cef1a1ed"
    client_secret    = var.AZURE_CLIENT_SECRET
  }
}



variable "AZURE_CLIENT_SECRET" {
  type = string
}