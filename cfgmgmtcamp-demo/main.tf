provider "aws" {
  region = "us-east-1"
}

data "aws_ami_ids" "ubuntu" {
  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
  }
}

resource "aws_instance" "web" {
  ami           = "ami-cd0f5cb6"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}
