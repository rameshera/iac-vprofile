terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # version = "~> 5.25"
      version = "~> 6.0"
    }

    random = {
      source  = "hashicorp/random"
      # version = "~> 3.5.1"
      version = "~> 3.7.2"
    }

    tls = {
      source  = "hashicorp/tls"
      # version = "~> 4.0.4"
      version = "~> 4.1.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      # version = "~> 2.3.2"
      version = "~> 2.3.7"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      #version = "~> 2.23.0"
      version = "~> 3.0.1"
    }
  }

  backend "s3" {
    bucket = "gitopsterrastate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  #required_version = "~> 1.6.3"
}
##
##
##
