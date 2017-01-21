output "server_address" {
    value = "${aws_instance.server.0.public_dns}"
}

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
