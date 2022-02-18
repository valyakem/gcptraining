provider "aws"{
  region  = "ca-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0aee2d0182c9054ac"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}