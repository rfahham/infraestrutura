resource "aws_instance" "server" {
  # count                  = var.number_instances
  count = local.instance_number <= 0 ? 0 : local.instance_number
  ami   = var.instance_ami
  # instance_type          = var.instance_type
  instance_type = lookup(var.instance_type, var.env)
  # tags                   = var.instance_tags
  tags = merge(
    local.common_tags,
    {
      Project = "Built-in Terraform"
      Env     = format("%s", var.env)
      Name    = format("Instance - %d", count.index + 1)
    }
  )
  key_name               = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.security_group.id]
}