variable "subscription_id" {
  description = "the azure subscription id given here"
  type = string
}
variable "resource_group_name" {
  description = "The name of the Resource Group where all resources will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created (e.g., 'East US')."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {}
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
}

variable "base_appname" {
  description = "The base application name used to form resource names."
  type        = string
}

variable "env_name" {
  description = "The environment identifier (e.g., 'dev', 'prod') used to form resource names."
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for your Azure subscription."
  type        = string
}

variable "object_id" {
  description = "The object ID of the service principal or managed identity (if applicable)."
  type        = string
  default     = ""
}
