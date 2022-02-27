module "myec2_calling_module" {
    source = "git@github.com:rsaideekshith/terraform-modules.git//ec2-module?ref=main"
    
    instance_count = var.instance_count

    ami_id = data.aws_ami.ubuntu.id
    project = "MY_TF_PRO"
    public_subnet_id = module.my_public_subnet_calling_module_my_public_subnet.id


}