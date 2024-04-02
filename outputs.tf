output "cidr_name" {
  value       = aws_vpc.this.cidr_block
  description = "name of cidr block"
}
output "tenancy" {
  value       = aws_vpc.this.instance_tenancy
  description = "Tname of teneancy"
}