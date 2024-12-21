terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6" # Ensures it uses version 3.x.x but will update to the latest patch version within the 3.x range
    }
  }
}