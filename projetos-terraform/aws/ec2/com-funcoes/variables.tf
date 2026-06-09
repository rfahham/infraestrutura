variable "env" {}

variable "aws_region" {
  type = string
  # default     = "us-east-1"
  description = "Região onde será criada a instância"
}

variable "aws_profile" {
  type = string
  # default     = "terraform"
  description = "Profile do terraform que está sendo utilizado"
}

variable "instance_ami" {
  type = string
  # default     = "ami-0e731c8a588258d0d"
  description = "Imagem da instância"
  validation {

    condition = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"

    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_type" {
  type = object({

    dev  = string
    qa   = string
    prod = string
  })
  description = "Tipo da Instância"
  default = {
    dev  = "t3.micro"
    qa   = "t3.medium"
    prod = "t3.medium"
  }
}

variable "instance_number" {

  type = object({

    dev  = number
    qa   = number
    prod = number
  })

  description = "Number instances to create"

  default = {
    dev  = 1
    qa   = 2
    prod = 3
  }

}

variable "instance_tags" {
  type = map(string)
  default = {
    Name    = "instance-"
    Project = "Terraform"
  }
  description = "Tags da instância"
}

variable "prefix_name" {
  type        = string
  description = "Type your name"
}
