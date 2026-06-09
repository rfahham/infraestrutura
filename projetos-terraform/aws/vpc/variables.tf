variable "subnets" {
  type         = map(any)
  default      = {}
  description  = "Subnets para criacao na AWS"
}