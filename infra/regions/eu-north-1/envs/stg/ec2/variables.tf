variable "env" {
  type = string
  default = "stg"
}

variable "project_name" {
  type = string
  default = "stg"
}

variable "USER_HOME" {
  type = string
}

variable "security_group_id" {
  type = string
  default = "sg-02e9afe4909c78381"
}

variable "cluster_security_group_id" {
  type = string
  default = "sg-054e92f73b0661410"
}

variable "vpc_security_group_id" {
  type = string
  default = "sg-0ce9f6884e3c43709"
}
