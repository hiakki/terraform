resource "aws_network_acl" "bo-nacl1" {
  vpc_id = "${aws_vpc.bo-vpc.id}"

  tags = {
    Name = "bo-nacl1"
  }
}

resource "aws_network_acl_rule" "bo-nacl1-rule1" {
  network_acl_id = "${aws_network_acl.bo-nacl1.id}"
  rule_number    = 201
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "0.0.0.0/0"
  from_port      = 22
  to_port        = 22
}

resource "aws_network_acl_rule" "bo-nacl1-rule2" {
  network_acl_id = "${aws_network_acl.bo-nacl1.id}"
  rule_number    = 202
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "0.0.0.0/0"
  from_port      = 80
  to_port        = 80
}

resource "aws_network_acl_rule" "bo-nacl1-rule3" {
  network_acl_id = "${aws_network_acl.bo-nacl1.id}"
  rule_number    = 203
  egress         = true
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "0.0.0.0/0"
  from_port      = 80
  to_port        = 80
}

resource "aws_network_acl_rule" "bo-nacl1-rule4" {
  network_acl_id = "${aws_network_acl.bo-nacl1.id}"
  rule_number    = 204
  egress         = true
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "0.0.0.0/0"
  from_port      = 443
  to_port        = 443
}

resource "aws_network_acl_rule" "bo-nacl1-rule5" {
  network_acl_id = "${aws_network_acl.bo-nacl1.id}"
  rule_number    = 205
  egress         = true
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "47.9.74.8/32"
  from_port      = 22
  to_port        = 22
}

resource "aws_network_acl" "bo-nacl2" {
  vpc_id = "${aws_vpc.bo-vpc.id}"

  tags = {
    Name = "bo-nacl2"
  }
}

resource "aws_network_acl_rule" "bo-nacl2-rule1" {
  network_acl_id = "${aws_network_acl.bo-nacl2.id}"
  rule_number    = 201
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "0.0.0.0/0"
  from_port      = 22
  to_port        = 22
}

resource "aws_network_acl_rule" "bo-nacl2-rule2" {
  network_acl_id = "${aws_network_acl.bo-nacl2.id}"
  rule_number    = 202
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "${aws_subnet.S1.cidr_block}"
  from_port      = 3306
  to_port        = 3306
}

resource "aws_network_acl_rule" "bo-nacl2-rule3" {
  network_acl_id = "${aws_network_acl.bo-nacl2.id}"
  rule_number    = 203
  egress         = true
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "0.0.0.0/0"
  from_port      = 80
  to_port        = 80
}

resource "aws_network_acl_rule" "bo-nacl2-rule4" {
  network_acl_id = "${aws_network_acl.bo-nacl2.id}"
  rule_number    = 204
  egress         = true
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block = "0.0.0.0/0"
  from_port      = 443
  to_port        = 443
}
