data "aws_lb" "trial" {
  arn = var.lb_arn
  name = var.lb_name
}

data "aws_route53_zone" "trial" {
  name         = "trial-day.link."
  private_zone = false
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.trial.zone_id
  name    = "www"
  type    = "A"

  alias {
    name                   = data.aws_lb.trial.dns_name
    zone_id                = data.aws_lb.trial.zone_id
    evaluate_target_health = true
  }
}


