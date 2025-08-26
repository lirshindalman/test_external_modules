provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source      = "git::https://github.com/maxamel/test_module.git"
  ami_id      = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
  subnet_id   = "subnet-12345678"       
}

module "ec4" {
  source      = "git::https://github.com/maxamel/test_module2.git"
  ami_id      = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
  subnet_id   = "subnet-12345678"       
}

module "ec6" {
  source      = "git::https://github.com/maxamel/test_module3.git"
  ami_id      = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"
  subnet_id   = "subnet-12345678"       
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec4_instance_id" {
  value = module.ec4.instance_id
}

output "ec6_instance_id" {
  value = module.ec6.instance_id
}
