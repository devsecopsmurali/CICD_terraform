
resource "aws_instance" "web_servers" {
# Define the number of VMs
  count = 2

  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro" 
}
output "aws_instances" {
  value = [for instance in aws_instance.this : instance.public_ip]
}