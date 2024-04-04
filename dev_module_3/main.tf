module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
  ami           = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  key_name               = "Batch1"
  monitoring             = true
  vpc_security_group_ids = ["sg-07743fd1cb146c2c8"]
  subnet_id              = "subnet-0c669e5faf1eee1a4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

output "ec2_complete_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.ec2_instance.public_ip
}
provider "aws" {
  region     = "us-east-1"
}