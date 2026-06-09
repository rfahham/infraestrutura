# data "aws_ami" "ubuntu" {
#   owners      = ["amazon"]
#   most_recent = true
#   name_regex  = "ubuntu"
# }

data "aws_ami" "amazon-linux" {
  owners      = ["amazon"]
  most_recent = true
  name_regex  = "amazon"
}