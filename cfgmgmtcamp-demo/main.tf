provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-cd0f5cb6"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}
