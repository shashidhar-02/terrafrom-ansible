#tf file  for aws ec2 instance with vpc 
terraform {
    required_version = ">= 0.12"
    required_providers {
        random = {
        source  = "hashicorp/random"
        version = "~> 3.1.0"
        }
        kubernetes = {
        source  = "hashicorp/kubernetes"
        version = ">=2.7.1"
        }
        aws = {
        source  = "hashicorp/aws"
        version = ">= 3.68.0"
        }
        local = {
        source  = "hashicorp/local"
        version = "~> 2.1.0"
        }
        null = {
        source  = "hashicorp/null"
        version = "~> 3.1.0"
        }
        cloudinit = {
        source  = "hashicorp/cloudinit"
        version = "~> 2.2.0"
        }
    }
}
provider "aws"{
    region ="us-east-1" 
}
resource "aws_instance" "example"{
    ami ="ami-0c55b159cbfafe1f0"
    instance_type="t2.micro"
}
output "instance_id" {
    value=aws_instance.example.id
}
