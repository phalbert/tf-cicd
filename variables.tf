#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#*                 Root Module                         *#
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

# Service Principal Variables

variable "client_id" {
    description =   "Client ID (APP ID) of the application"
    type        =   string
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
}

variable "subscription_id" {
    description =   "Subscription ID"
    type        =   string
}

variable "tenant_id" {
    description =   "Tenant ID"
    type        =   string
}

variable "resource_group_name" {
  type        = string
  default     = "DefaultResources"
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  default     = "westus2"
  description = "RG location in Azure"
}

variable "storage_account_name" {
  type        = string
  description = "Storage Account name in Azure"
  default     = "demo"
}