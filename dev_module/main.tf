module "custom_vpc" {
  source     = "https://github.com/devsecopsmurali/CICD_terraform/tree/custom_modules/modules"
  cidr_value = "10.0.0.0/16"
  tenancy    = "default"
  region     = "us-east-1"
}