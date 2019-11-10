provider "aws" {
region = "ap-south-1"
}

resource "aws_elb" "lb" {

    name = "testing"
    subnets = ["subnet-0bad40a5c43a62dcf", "subnet-05848fe91f208b06f"]
    cross_zone_load_balancing = true
    instances = ["i-0bbbc887e0890c025", "i-0bc6cd8ef46b1d945"]
    security_groups = ["sg-059e3a91e496bab98"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
}

}
