module "sandbox-test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "anvithm+terraformtest@amazon.com"
    AccountName               = "sandbox-test"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "anvithm+tfct@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "anvitha"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
