### USER CREDS ###
credentials = "~/.aws/creds"
aws_profile = "default"
key_name = "aws_tmatsuo"
region = "us-east-1"
env = "dev"


### NETWORK ###
cidr        = "172.21.0.0/16"
azs         = ["us-east-1a", "us-east-1c", "us-east-1e"]
admin_net   = ["172.21.11.0/24", "172.21.12.0/24", "172.21.13.0/24"]
build_net   = ["172.21.21.0/24", "172.21.22.0/24", "172.21.23.0/24"]
private_net = ["172.21.31.0/24", "172.21.32.0/24", "172.21.33.0/24"]
public_net  = ["172.21.41.0/24", "172.21.42.0/24", "172.21.43.0/24"]


### DNS/DHCP ###
dns_ext_zone_name = "fuzzmonk.fun"
dns_int_zone_name = "fuzzmonk.internal"
ttl = "60"


### BASTION ###
bastion_ami_owner = "023775684211"
iam_instance_profile = "cloudwatch_instance_profile"