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

variable "lb_arn" {
  type    = string
  default = "arn:aws:elasticloadbalancing:eu-north-1:019496914213:loadbalancer/app/k8s-trial-trialing-0bd9406f56/0ad31fddb47f5569"
}

variable "lb_name" {
  type    = string
  default = "k8s-trial-trialing-0bd9406f56"
}

variable "lb_dns_name" {
  type = string
  default = "k8s-trial-trialing-0bd9406f56-454493940.eu-north-1.elb.amazonaws.com"
}
