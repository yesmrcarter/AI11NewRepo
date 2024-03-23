provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "NewIntance" {
  count = 1
  ami = "ami-02d7fd1c2af6eead0"
  instance_type = "t2.medium"
  key_name = "Triage_keypair"
  tags = {
    Name = "Actionitem11"
    }
}
