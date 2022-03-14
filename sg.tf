module "my_sg_calling_module" {
  source = "github.com/rsaideekshith/terraform-modules/sg-module"
  vpc_id = module.my_sg_calling_module.vpc_id

}
