module "mysg_calling_module" {
  source = "git@github.com:rsaideekshith/terraform-modules.git//sg-module"

  name        = "mysg"
  description = "Security group for mysg within VPC"
  vpc_id      =  module.mysg_calling_module.outputs.myvpc_id

  cidr_block = [var.public_subnet_cidr_block]
}
ingress_with_cidr_blocks = [
    {

    description      = "SSH into VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.public_subnet_cidr_block]

    }
]