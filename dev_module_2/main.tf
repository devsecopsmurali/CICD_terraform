
resource "aws_instance" "web_servers" {
# Define the number of VMs
  #count = 2
  security_groups             = ["${aws_security_group.web_sg.id}"] 
  key_name = "tf-key-pair"
  associate_public_ip_address = true
  subnet_id = aws_subnet.subnet.id
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro" 
}

resource "aws_key_pair" "tf-key-pair" {
key_name = "tf-key-pair"
public_key = tls_private_key.rsa.public_key_openssh
}
resource "tls_private_key" "rsa" {
algorithm = "RSA"
rsa_bits  = 4096
}
resource "local_file" "tf-key" {
content  = tls_private_key.rsa.private_key_pem
filename = "tf-key-pair"
}


provider "aws" {
  region     = "us-east-1"
}