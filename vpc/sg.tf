resource "aws_security_group" "bo-sg1" {
    vpc_id = "${aws_vpc.bo-vpc.id}"
    
    egress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }    
    egress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }    
    egress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["47.9.74.8/32"]
    }    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }    
    
    tags {
        Name = "bo-sg1"
    }
}

resource "aws_security_group" "bo-sg2" {
    vpc_id = "${aws_vpc.bo-vpc.id}"
    
    egress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }    
    egress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["${aws_subnet.S1.cidr_block}"]
    }    
    
    tags {
        Name = "bo-sg2"
    }
}
