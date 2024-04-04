module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
  ami           = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-07743fd1cb146c2c8"]
  subnet_id              = "subnet-0c669e5faf1eee1a4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
provider "aws" {
  region     = "us-east-1"
}