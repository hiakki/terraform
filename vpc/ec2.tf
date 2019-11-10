resource "aws_instance" "HostA" {
    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.S1.id}"
    vpc_security_group_ids = ["${aws_security_group.bo-sg1.id}"]
    tags {
      Name = "HostA"
    }
}

resource "aws_instance" "HostB" {
    ami = "${lookup(var.AMI, var.AWS_REGION)}"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.S2.id}"
    vpc_security_group_ids = ["${aws_security_group.bo-sg2.id}"]
    tags {
      Name = "HostB"
    }
}
