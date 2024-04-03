
resource "aws_instance" "web_servers" {
# Define the number of VMs
  count = 2
  security_groups             = ["${aws_security_group.web_sg.id}"] 
  associate_public_ip_address = true
  subnet_id = aws_subnet.subnet.id
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro" 
}
output "ec2_id_test" {
  value = [for instance in aws_instance.web_servers.id : instance.public_ip]
}

# output "ec2_id_test" {
#   value = "${aws_instance.web_servers.id}"
# }

provider "aws" {
  region     = "us-east-1"
}