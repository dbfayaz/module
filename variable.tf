variable "adf_name" {
  description = "The name of the Azure Data Factory instance."
  type        = string
}

variable "location" {
  description = "The Azure region where the Data Factory instance will be deployed."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group that will host the Data Factory instance."
  type        = string
}
