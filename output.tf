 
 output "LV ami" { 
    value = "${lookup(var.ami, "${var.region}-${var.platform}")}"
 }
 
 output "LV region - platform" {
    value = "${var.region}-${var.platform}"
 }
 
 output "LV count" {
    value = "${var.servers}"
 }
 
 output "LV SG" {
    value = "${aws_security_group.consul.name}"
 }
 
 /*
 ami = "${lookup(var.ami, "${var.region}-${var.platform}")}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    count = "${var.servers}"
    security_groups = ["${aws_security_group.consul.name}"]
*/