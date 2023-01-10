variable "region" {
  default = "us-east-2"

}

variable "int_type" {
  description = "Tipo de instancia EC2 WEB"
  type        = string
  default     = "t2.micro"
}

variable "int_type_1" {
  description = "Tipo de instancia EC2 WEB"
  type        = string
  default     = "t1.micro"
}

variable "disable_api_termination" {
  description = "Protege a instancia EC2 contra delete acidental"
  type        = bool
  default     = false
}

variable "int_names" {
  description = "lista de nomes para a instancias"
  type        = list(string)
  default     = ["HelloWorld", "HelloWorld2-use-state-s3", "HelloWorld3-use-state-s3"]
}

variable "amis" {
  description = "Anis para determinadas regiões"
  type        = map(any)
  default = {
    "us-east-1" = "ami-0b5eea76982371e91"
    "us-east-2" = "ami-0fe472d8a85bc7b0e"
  }
}
