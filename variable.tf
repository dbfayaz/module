variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "location" {
  description = "The Azure region where the Key Vault will be deployed."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Key Vault will be created."
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for the Azure subscription."
  type        = string
}
variable "sku_name" {
  description = "The SKU name for the Key Vault. Valid values: standard or premium."
  type        = string
  default     = "standard"
}

