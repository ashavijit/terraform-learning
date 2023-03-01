terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "3.38.0"
      }
    }

required_version = "=> 1.2.0"

}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_ec2" {   #AMI means Amazon Machine Image
   count = 5  #count = 5 means 5 instances will be created
   ami = "ami-0c2b8ca1dad447f8a"   #ami-0c2b8ca1dad447f8a is the AMI ID of Amazon Linux 2 AMI (HVM), SSD Volume Type (64-bit x86)
   instance_type = "t2.micro"     #t2.micro is the instance type FREE tier eligible
   tags = {
	name = "my_ec2_instance"

   }
} 

output "public_ip" {
  value = aws_instance.my_ec2[*].public_ip  #[*] means all the instances in Array
}

# terraform init
# terraform plan
# terraform apply

# terraform destroy