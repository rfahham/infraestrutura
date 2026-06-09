resource "aws_instance" "locust-master" {
  count         = 1
  ami           = var.aws_ami
  instance_type = var.instance_type
  tags = {
    Name = "master"
    type = "master"
  }
  key_name               = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]
}

resource "aws_instance" "locust-slave" {
  count         = 2
  ami           = var.aws_ami
  instance_type = var.instance_type
  tags = {
    Name = "slave"
    type = "slave"
  }
  key_name               = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]
}