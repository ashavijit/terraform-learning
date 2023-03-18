provider aws {
    region = "us-east-1"
}

variable "instance_type" {
    description = "Simple EC2 instance type"
    default = "t2.micro"
}
  
variable "ami" {
  description = "AMI ID"
  default = "kdasnjnfjj"
}

variable "subnet_id" {
  description = "value of subnet id" 
}

variable "security_group_ids" {
  description = "List of security group IDs associated with the instance"
}

variable "key_name" {
  description = "The key name that should be used for the instance"
}

variable "instance_count" {
  description = "Number of instances to launch"
  default = 1
}

variable "server_port" {
  description = "The port the HTTP server will listen on"
  default = 8080
}


resource "aws_instance" "avijitjsx" {
    ami=var.ami
    instance_type=var.instance_type
    subnet_id=var.subnet_id
    security_groups=var.security_group_ids
    key_name=var.key_name
    count=var.instance_count

    tags = {
        Name = "avijitjsx"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo apt-get update",
            "sudo apt-get install -y nginx"
        ]
    }

    provisioner "file" {
        source = "index.html"
        destination = "/tmp/index.html"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo mv /tmp/index.html /var/www/html/index.html"
        ]
    }

    user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update
                echo "Hello, World" > index.html
                nohup busybox httpd -f -p "${var.server_port}" &
                EOF
}

output "public_ip" {
  value = aws_instance.avijitjsx.public_ip
#   value1 = aws_instance.avijitjsx.public_dns
}
  
output "public_dns" {
  value = aws_instance.avijitjsx.public_dns
}