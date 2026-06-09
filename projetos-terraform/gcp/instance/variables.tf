variable "project_id" {
  type = string
  default = "devops-rfahham-413414"
}

variable "zone" {
  type = string
  default = "southamerica-east1-a"
}

variable "region" {
  type = string
  default = "southamerica-east1"
}

variable "name" {
  type = string
  default = "vm-webserver"
}

variable "type" {
  type = string
  default = "e2-standard-2"
}

variable "image" {
  type = string
  default = "ubuntu-2204-jammy-v20240126"
}

variable "nome_fw" {
  type = string
  default = "webserver-firewall"
}

variable "portas" {
  type = list
  default = ["80"]
}