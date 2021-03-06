# Designate a cloud provider, region, and credentials
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami = "ami-0a37f91139459fbe7"
  instance_type = "t2.micro"  
  count = 4
  // vpc = vpc-0c3b90560ac3db28e
  vpc_security_group_ids = [ "sg-0ef4af182b69175a0" ]
  subnet_id = "subnet-01b508e7b2ffcb409"

  tags = {
    Name = "Udacity-T2 ${count.index}"
  }
}


# Provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  ami = "ami-0a37f91139459fbe7"
  instance_type = "m4.large"  
  count = 2
  // vpc = vpc-0c3b90560ac3db28e
  vpc_security_group_ids = [ "sg-0ef4af182b69175a0" ]
  subnet_id = "subnet-01b508e7b2ffcb409"

  tags = {
    Name = "Udacity-M4 ${count.index}"
  }
}
