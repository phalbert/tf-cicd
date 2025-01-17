#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#*                 Root Module                         *#
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

# Terraform Block

terraform {
    required_providers  {
        azurerm =   {
            source  =   "hashicorp/azurerm"
            version = "~> 3.0.2"
        }
    }
}

# Provider Block

provider "azurerm" {
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    subscription_id =   var.subscription_id
    tenant_id       =   var.tenant_id
    
    features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"
}

resource "azurerm_storage_account" "storage_account" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name

  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}

# provider "azuread" {
#     version         =   ">= 0.11"
#     client_id       =   var.client_id
#     client_secret   =   var.client_secret
#     tenant_id       =   var.tenant_id
#     alias           =   "ad"
# }


// module "windows-server" {
//     source  =   "./azure/WindowsServer2019"
// }

// module "winvm" {
//     source =    "./azure/Windows10-ExistingInfra"
// }



// module "aks" {
//     source    =     "./azure/aks"
//     env       =     "dev"
// }



// module "customrole" {
//     source  =   "./azure/custom-roles"
// }

// module "provisioners" {
//     source  =   "./azure/provisioners-example"
// }

// module "linuxvm" {
//     source  =   "./azure/linuxVM"
// }

