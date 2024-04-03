resource "aws_subnet" "subnet" {
  cidr_block        = cidrsubnet(aws_vpc.test_env.cidr_block, 3, 1)
  vpc_id            = aws_vpc.test_env.id
  availability_zone = "us-east-1b"
}
resource "aws_internet_gateway" "test_env_gw" {
  vpc_id = aws_vpc.test_env.id
}
resource "aws_vpc" "test_env" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  
}