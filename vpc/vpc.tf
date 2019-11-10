resource "aws_vpc" "bo-vpc" {
    cidr_block = "192.168.1.0/24"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    enable_classiclink = "false"
    instance_tenancy = "default"
    tags {
       Name = "bo-vpc"
    }
}

resource "aws_subnet" "S1" {
    vpc_id = "${aws_vpc.bo-vpc.id}"
    cidr_block = "192.168.1.0/25"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-2a"
    tags = {
       Name = "S1"
    }
}

resource "aws_subnet" "S2" {
    vpc_id = "${aws_vpc.bo-vpc.id}"
    cidr_block = "192.168.1.128/25"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-2b"
    tags  = {
       Name = "S2"
    }
}

