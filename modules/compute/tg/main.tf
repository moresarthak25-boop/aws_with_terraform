#################################################
# TARGET GROUP
#################################################

resource "aws_lb_target_group" "web_tg" {

  name        = "dev-web-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"

  # REPLACE WITH YOUR ACTUAL VPC ID
  vpc_id = "vpc-0b96bfd6d88e39c14"

  health_check {
    enabled             = true
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  deregistration_delay = 30

  stickiness {
    type    = "lb_cookie"
    enabled = false
  }

  load_balancing_algorithm_type = "round_robin"

  tags = {
    Name        = "dev-target-group"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}