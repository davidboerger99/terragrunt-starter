locals {
  account_vars     = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

generate "backend" {
    path      = "backend.tf"
    if_exists = "overwrite"
    contents  = <<EOF
terraform {
    backend "s3" {
        bucket = "${local.account_vars.locals.account_id}-terraform-state"
        key    = "terraform.tfstate"
        region = "eu-central-1"
        profile = "${local.account_vars.locals.credential_profile}"
    }

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "5.27.0"
        }
    }

    required_version = ">= 0.14.0"
}
EOF
}