variable "project_name" {
  type    = string
  default = "trial"
}

variable "env" {
  type    = string
  default = "stg"
}

variable "net_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]
}

variable "priv_subnets" {
  type    = list(string)
  default = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
}

variable "pub_subnets" {
  type    = list(string)
  default = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
}

variable "USER_HOME" {
  type = string
}

variable "priv_route_table_id" {
  type = string
  default = "rtb-05088426499c077ad"
}

variable "igw_id" {
  type = string
  default = "igw-0bd7027c210ca566e"
}
