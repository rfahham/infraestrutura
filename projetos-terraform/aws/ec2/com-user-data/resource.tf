resource "aws_security_group" "securitygroup" {
  name        = "securitygroup"
  description = "Permitir acesso HTTP e acesso para a Internet"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "instance" {

  count = var.number_instances

  ami = "ami-0ae8f15ae66fe8cda"

  instance_type = "t3.micro"

  user_data = file("user-data.sh")

  vpc_security_group_ids = [aws_security_group.securitygroup.id]

  key_name = aws_key_pair.keypair.key_name

  tags = {
    Name    = "aws-instance-${count.index}"
    Project = "Criando instancias com user-data"
  }
}

resource "aws_key_pair" "keypair" {
  key_name   = "aws-instance-key"
  public_key = file("~/.ssh/id_rsa.pub")
}