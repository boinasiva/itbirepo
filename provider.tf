terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

}

provider "azurerm" {
  subscription_id = "da3c5666-736f-44d7-b621-230e0374fa8a"
  features {}
}