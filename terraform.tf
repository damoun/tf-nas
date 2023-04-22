terraform {
  cloud {
    organization = "damoun"

    workspaces {
      name = "nas"
    }
  }
  required_providers {
    truenas = {
      source  = "dariusbakunas/truenas"
      version = "0.11.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}
