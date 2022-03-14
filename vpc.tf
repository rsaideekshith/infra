module "myvpc_calling_module" {

    # Local Repo Reference
    # source = "../terraform-modules/vpc/module"
    # GITHUB Repo Reference
    source = "github.com/rsaideekshith/terraform-modules/vpc-modules"

    vpc_id = var.vpc_id
  vpc_cidr_block = "10.20.0.0/25"
  

}
