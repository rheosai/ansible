terraform {
  required_version  = ">=1.2.6"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">=2.2.3"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.24.0"
    }
  }
}

provider "local" {
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ubuntu1" {
  instance_type = "t2.micro"
  ami           = "ami-08c40ec9ead489470"
  key_name      = "ansible"
  tags = {
    Name = "ubuntu1"
  }
}
resource "aws_instance" "suse1" {
  instance_type = "t2.micro"
  ami           = "ami-08e167817c87ed7fd"
  key_name      = "ansible"
  tags = {
    Name = "suse1"
  }
}
resource "aws_instance" "redhat1" {
  instance_type = "t2.micro"
  ami           = "ami-06640050dc3f556bb"
  key_name      = "ansible"
  tags = {
    Name = "redhat1"
  }
}
resource "aws_instance" "amazon1" {
  instance_type = "t2.micro"
  ami           = "ami-026b57f3c383c2eec"
  key_name      = "ansible"
  tags = {
    Name = "amazon1"
  }
}