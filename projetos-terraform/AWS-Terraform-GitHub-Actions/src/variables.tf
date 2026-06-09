variable "aws_region" {
  description = "Região usada para criar os recursos da AWS"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "Nome da VPC"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "CIDR da VPC"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Zonas disponíveis"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "Subnet Privada"
  type        = set(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "Subnet Pública"
  type        = set(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "Nome do CLuster"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Versão do módulo"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Tipo de instâncias dos nodes"
  type        = set(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Tags do projeto"
  type        = map(any)
  nullable    = false
}