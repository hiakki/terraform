provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "ubuntu" {
ami = "ami-0123b531fc646552f"
instance_type = "t2.micro"
vpc_security_group_ids=["sg-059e3a91e496bab98"]
subnet_id="subnet-0bad40a5c43a62dcf"

tags {
Name = "Host A"
}
}

resource "aws_instance" "windows" {

ami = "ami-0134ce22bbe953ecc"
instance_type = "t2.micro"
vpc_security_group_ids=["sg-059e3a91e496bab98"]
subnet_id="subnet-0bad40a5c43a62dcf"

tags {
Name = "Host B"
}
}
