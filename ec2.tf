module "myec2_calling_module"  {
    source = "github.com/rsaideekshith/terraform-modules/ec2-module"

    
    instance_count = var.instance_count
    ami_id = data.aws_ami.ubuntu.id
    # ami_id = var.ami_id
subnet_id = module.my_subnet.subnet_id
vpc_security_group_id = module.vpc_security_group_id.aws_security_group.allow_ssh.id
     
       
     
}