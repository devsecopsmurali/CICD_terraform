resource "aws_vpc" "this" {
  cidr_block       = var.cidr_value
  instance_tenancy = var.tenancy

  tags = merge(
    var.additional_tags,
    {
      Name = "ENGP-VPC-Nch"
    },
  )
}