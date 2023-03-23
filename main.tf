terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
    organization = "terraformpolicies"
    workspaces {
      name = "AzureLab1"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = format("%s-%s", var.resource_group_name_prefix, var.resource_group_name)
  location = var.resource_group_location
}