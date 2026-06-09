# Get my public ip
data "http" "ip" {
  # url = "https://ipv4.icanhazip.com" quebra de linha
  url = "https://api4.ipify.org"
}

#Security Group Resource
resource "aws_security_group" "security_group" {
  name        = "${var.prefix_name}-sg"
  description = "Allow Inbound Traffic"

  ingress {
    description = "Port 80 from MyIP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${data.http.ip.response_body}/32"]
  }

  ingress {
    description = "Port 443 from MyIP"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${data.http.ip.response_body}/32"]
  }

  ingress {
    description = "Port 22 from GITHUB"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["20.201.28.151/32"]
  }

  ingress {
    description = "Port 22 from MyIP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${data.http.ip.response_body}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}