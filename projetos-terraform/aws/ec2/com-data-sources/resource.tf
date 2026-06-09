resource "aws_instance" "web" {
  count         = var.number_instances
  ami           = data.aws_ami.amazon-linux.id
  instance_type = var.instance_type
  tags = {
    Name    = "aws-instance-${count.index}"
    Project = "Criando instancias, bucket e slvando o tfstate"
  }
  key_name               = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]
}


