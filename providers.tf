terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3d6b5ed7-75d7-4d0d-813a-234f9038382a"
  tenant_id       = "4157fa66-e2ef-4027-a2fd-9d9166627508"
  client_id       = "c0327bc8-0b5e-4efe-b895-f3b0fd441ab4"
  client_secret   = "1kb8Q~HLRYpxDnqHMABuSy92CmHZJ9VMqnMKOa5~"
}