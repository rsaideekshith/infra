module "my_sg_calling_module" {
  source = "github.com/rsaideekshith/terraform-modules/sg-module"

  vpc_id      =  module.myvpc_calling_module.myvpc_id
  public_subnet_cidr_block = module.my_public_subnet_calling_module.my_public_subnet_cidr_block
}
