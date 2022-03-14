variable "region" {
  type = string
  default = "ap-south-1"
}

variable "vpc_cidr_block" {
  type = string
  default = "10.20.0.0/25"
}
variable "aws" {
  type = string
  default = "ap-south-1"
}

variable "instance_count" {
  type = number
  default = 1
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "public_subnets" {
  type = list(string)
  description = "list of subnets"
  default = [ "10.20.0.0/28", "10.20.0.16/28", "10.20.0.32/28" ]
}
variable "private_subnets" {
   type = list(string)
   description = "list of private subnets"
  default = [ "10.0.0.64/28", "10.0.0.80/28", "10.0.0.96/28" ]
 }


# 10.20.0.0/25 = 128 IP's : VPC CIDR Block - (ap-south-1) - Mumbai - 3 AZ's (1a,1b,1c)

# 64 - public subnet blocks - 10.20.0.0/25
#   16 - "10.20.0.0/28" 16  - ap-south-1a
#   16 - "10.20.0.16/28" 32 - ap-south-1b
#   16 - "10.0.0.32/28" 48 - ap-south-1c
#   16 - "10.0.0.48/28" 64 - ap-south-1a

# 64 - private subnet blocks - 10.20.0.64/25
#   16 - "10.20.0.64/28" 80 - ap-south-1a
#   16 - "10.20.0.80/28" 96 - ap-south-1b
#   16 - "10.20.0.96/28" 112 - ap-south-1c
#   16 - "10.20.0.112/28" 128 - ap-south-1a