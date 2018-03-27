
output "webserver_hostname" {
  description = "The public DNS name to reach the bastion."
  value = "${aws_instance.webserver.private_dns}"
}
