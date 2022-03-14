module "my_public_subnet_calling_module" {
    count = ( length(var.public_subnets) > 0 ) ? length(var.public_subnets) : 0
    # [ "10.0.0.0/28", "10.0.0.16/28", "10.0.0.32/28" ]
     #           0            1                 2
     source = "github.com/rsaideekshith/terraform-modules/subnet-module"
     subnet_cidr_block = var.public_subnets[count.index]
 }

 module "my_private_subnet_calling_module" {
    count = ( length(var.private_subnets) > 0 ) ? length(var.private_subnets) : 0
#     # [ "10.0.0.64/28", "10.0.0.96/28", "10.0.0.112/28" ]
     #           0            1                 2
     source = "github.com/rsaideekshith/terraform-modules/subnet-module"
     subnet_cidr_block = var.private_subnets[count.index]
     
}