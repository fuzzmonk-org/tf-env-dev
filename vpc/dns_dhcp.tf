


/*
# ext dns zone already created. 
# terraform will create a dupllicate zone and aws will gladly accept two zone files with the same name. sigh.
resource "aws_route53_zone" "ext_dns" {
  name = "${var.dns_ext_zone_name}"
  comment = "dns zone managed by terraform"
}
*/

/*
# external dns is already created
data "aws_route53_zone" "ext_dns" {
  name = "${format("%s.%s", var.env, var.dns_ext_zone_name)}"
  private_zone = false
}

# adding vpc_id creates a private zone by default
resource "aws_route53_zone" "int_dns" {
  name = "${var.dns_int_zone_name}"
  vpc_id = "${module.vpc.vpc_id}"
  comment = "dns zone managed by terraform"
}

resource "aws_route53_record" "bastion" {
   count = "${length(var.azs)}"
   zone_id = "${data.aws_route53_zone.ext_dns.zone_id}"
   name = "${format("bastion_%s", element(module.vpc.azs, count.index))}"
   type = "A"
   ttl = "${var.ttl}"
   records = ["${element(module.bastion.bastion_public_ip, count.index)}"]
}

# will add weighting in the future
resource "aws_route53_record" "bastion_master" {
   #count = "${length(var.azs)}"
   count = 1
   zone_id = "${data.aws_route53_zone.ext_dns.zone_id}"
   name = "bastion"
   type = "CNAME"
   ttl = "${var.ttl}"
   records = ["${format("bastion_%s.%s.%s", element(module.vpc.azs, count.index), var.env, var.dns_ext_zone_name)}"]
}
*/

/*
# dns record placeholder for future use
resource "aws_route53_record" "database" {
   zone_id = "${aws_route53_zone.prod_dns.zone_id}"
   name = "mydatabase.${var.dns_zone_name}"
   type = "A"
   ttl = "300"
   records = ["${aws_instance.db.private_ip}"]
}
*/
