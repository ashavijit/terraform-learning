# LEARNING TERRAFORM

## What is Terraform?

Terraform is an open source tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

## Why Terraform?

Terraform allows you to safely and predictably create, change, and improve infrastructure. It is an open source tool that codifies APIs into declarative configuration files that can be shared amongst team members, treated as code, edited, reviewed, and versioned.

## How Terraform Works?

Terraform generates an execution plan describing what it will do to reach the desired state, and then executes it to build the described infrastructure. As the configuration changes, Terraform is able to determine what changed and create incremental execution plans which can be applied.

## How to use this repo?

This repo contains the terraform code for creating a VPC, Subnets, Internet Gateway, Route Table, Security Group, EC2 Instance, S3 Bucket, and DynamoDB Table.

## How to run this code?

1. Clone this repo
2. Run `terraform init` to initialize the working directory
3. Run `terraform plan` to see the changes that will be made
4. Run `terraform apply` to apply the changes
5. Run `terraform destroy` to destroy the resources


## How to contribute?

1. Fork this repo
2. Create a new branch
3. Make your changes
4. Create a pull request

## HCL Syntax

HCL is the HashiCorp Configuration Language. It is a declarative language that is designed to be easy to read and write. It is a superset of JSON, and can be used to configure many HashiCorp products.

## Examples

## HCL Basics 

### Comments

```hcl
# This is a comment
```

### Strings

```hcl
# Single-quoted strings
resource "aws_instance"  {
  ami = 'ami-2757f631'
}

# Double-quoted strings
resource "aws_instance" "example" {
  ami = "ami-2757f631"
}
``` 

### Numbers

```hcl
# Integer
resource "aws_instance" "example" {
  ami = 123456789
}

# Floating point
resource "aws_instance" "example" {
  ami = 123456789.123456789
}
```

### Booleans

```hcl
# Boolean

resource "aws_instance" "example" {
  ami = true
}
```

### Lists

```hcl
# List of strings
resource "aws_instance" "example" {
  ami = ["ami-2757f631", "ami-2757f632"]
}

# List of numbers

resource "aws_instance" "example" {
  ami = [123456789, 123456790]
}
```

```hcl
# Create a single EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

# Create a S3 bucket

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
```

## Resources

- [Terraform](https://www.terraform.io/)
- [Terraform Docs](https://www.terraform.io/docs/index.html)
- [Terraform AWS Provider](https://www.terraform.io/docs/providers/aws/index.html)
- [Terraform AWS Provider Docs](https://www.terraform.io/docs/providers/aws/index.html)


## If you like this repo, please give it a star ⭐️

