resource "aws_instance" "web" {
  count         = var.number_instances
  ami           = var.aws_ami
  instance_type = var.instance_type
  tags = {
    Name    = "aws-instance-${count.index}"
    Project = "Criando instancias com Security Group"
  }
  key_name               = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]
}

resource "aws_key_pair" "this" {
  key_name   = "aws-instance-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
