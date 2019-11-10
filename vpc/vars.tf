variable "AWS_REGION" {
    default = "us-east-2"
}

variable "AMI" {
    type = "map"
    
    default {
        us-east-2 = "ami-0d5d9d301c853a04a"
    }
}
