module "my_sg_calling_module" {
  source = "github.com/rsaideekshith/terraform-modules/sg-module"
  name = "my_security_group"
  vpc_id = module.my_sg_calling_module.vpc_id
   cidr_blocks      =  ["10.20.0.0/25"]

}
