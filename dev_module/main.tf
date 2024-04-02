module "custom_vpc" {
  source     = ".."
  cidr_value = "10.0.0.0/16"
  tenancy    = "default"
  region     = "us-east-1"
}