resource "local_file" "local_file" {
  content = "Hello World"
  filename = "${path.module}/local_file.txt"
}

# terraform init
# terraform apply

# cat local_file.txt
# Hello World

# terraform destroy to remove the file
# terraform plan to see the changes

# terraform apply -auto-approve to apply the changes

# terraform destroy -auto-approve to remove the file



  
