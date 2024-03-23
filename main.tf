provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "New-Instance" {
  count = 1
  ami = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.medium"
  key_name = "Triage_keypair"
  tags = {
    Name = "NewInstance"
    }
}


resource "aws_instance" "Rhel-Instance" {
    
    ami   = "ami-0fe630eb857a6ec83"
    instance_type = "t2.medium"
    key_name = "Triage_keypair"
    tags = {
      Name = "NewRhel"
      }
}

resource "aws_instance" "Ubuntu-Intance" {
  count = 1
  ami = "ami-0cd59ecaf368e5ccf"
  instance_type = "t2.medium"
  key_name = "Triage_keypair"
  tags = {
    Name = "NewUbuntu"
    }
}
  
resource "aws_instance" "instanceforpush" {
  count = 1
  ami = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.medium"
  key_name = "Triage_keypair"
  #specify vol size
  root_block_device {
    volume_size = 12 # in GB <<----- I increased this!
    volume_type = "gp3"
    encrypted   = true
  }
  tags = {
    Name = "instancetestforpush"
    }
}
