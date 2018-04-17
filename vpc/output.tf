output "region" {
  value = "${var.region}"
}

output "env" {
  value = "${var.env}"
}

output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "azs" {
  value = "${module.vpc.azs}"
}

output "test" {
  value = "${module.vpc.test}"
}

output "ig_id" {
  value = "${module.vpc.ig_id}"
}

output "bastion_public_ip" {
  value = "${module.bastion.bastion_public_ip}"
}

output "bastion_eip_id" {
  value = "${module.bastion.bastion_eip_id}"
}
