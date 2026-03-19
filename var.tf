variable "vpc_cidr" {
  description = "This is the default VPC cidr"
  type        = string
  default     = "10.99.0.0/16"
}
variable "subnet_cidr1" {
  description = "This is the default VPC cidr"
  type        = string
  default     = "10.99.1.0/24"
}


data "aws_ec2_managed_prefix_list" "cloudfront" {
  name = "com.amazonaws.global.cloudfront.origin-facing"
}
data "aws_availability_zones" "available" {
  state = "available"
}
data "aws_caller_identity" "current" {}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
