variable "workspace_name" {
  description = "The name of the Databricks workspace."
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group in which the Databricks workspace will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the Databricks workspace will be deployed."
  type        = string
}

variable "sku" {
  description = "The SKU for the Databricks workspace (e.g., 'standard' or 'premium')."
  type        = string
}
