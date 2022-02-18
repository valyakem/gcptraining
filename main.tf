provider "aws" {
  region  = "us-central-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0aee2d0182c9054ac"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}