terraform { 
    required_providers { 
        aws = { 
            source = "hashicorp/aws" 
            version = "~> 3.27" 
            } 
    }

required_version = ">= 0.14.9" 
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "NODEJS" {
     ami = "ami-09d3b3274b6c5d4aa" 
     instance_type = "t2.micro" 
     key_name = "practicekp" 
     security_groups = ["launch-wizard-1"]

tags = { 
    Name = "NODEJS" 
    } 
    user_data = file("Dockerfile") 
    }
