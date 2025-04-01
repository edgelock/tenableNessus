variable "ami" {
  default     = "ami-0dba2cb6798deb6d8" # Ubuntu 20.04 LTS for us-east-1
  description = "The ID of the AMI to use for the instance"
}

variable "instance_type" {
  default     = "t2.large"
  description = "The type of instance to use"
}

variable "instance_name" {
  default     = "ExampleInstance"
  description = "The name tag for the instance"
}

variable "user_data" {
  default     = <<-EOF
                #!/bin/bash
                apt update -y
                apt install -y nginx
                systemctl start nginx
                systemctl enable nginx
                EOF
  description = "The user data to provide when launching the instance"
}
