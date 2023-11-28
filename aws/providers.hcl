locals {
  account_vars     = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "aws" {
  region = "${local.region_vars.locals.region_name}"
  profile = "${local.account_vars.locals.credential_profile}"
  default_tags {
    tags = {
      Account     = "${local.account_vars.locals.account_name}"
      Region      = "${local.region_vars.locals.region_name}"
      Environment = "${local.account_vars.locals.environment}"
      Terraform   = "true"
    }
  }

  # Define your account ID in `accounts.hcl` and
  # uncomment this line and remove one of the `$`'s below.
  # allowed_account_ids = ["$${local.account_vars.locals.account_id}"]
}
EOF
}