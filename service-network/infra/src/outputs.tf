
output "bastion_public_dns" {
  description = "The public DNS name to reach the bastion."
  value = "${module.bastion_load_balancer.dns_name}"
}
