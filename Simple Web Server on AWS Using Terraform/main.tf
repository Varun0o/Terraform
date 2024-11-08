provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web_server" {
  ami           = "ami-0dee22c13ea7a9a67" 
  instance_type = "t2.micro"
  key_name      = "Ansible"         
  security_groups   = [aws_security_group.web_sg.name]
  tags = {
    Name = "WebServer"
  }
}

resource "aws_security_group" "web_sg" {
  name_prefix = "web_sg_"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
