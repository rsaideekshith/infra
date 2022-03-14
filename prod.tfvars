vpc_cidr_block = "10.150.0.0/25"

instance_count = 3
instance_type = "t2.micro"

# ami_id = data.aws_ami.redhat.id

public_subnets = [ "10.20.0.0/28", "10.20.0.16/28", "10.20.0.32/28" ]

