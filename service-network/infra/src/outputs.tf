
output "bastion_public_dns" {
  description = "The public DNS name to reach the bastion."
  value = "${module.bastion_load_balancer.dns_name}"
}

resource "aws_ssm_parameter" "bastion_public_dns" {
  name      = "/${var.estate_id}/${var.component}/${var.service}/${var.deployment_id}/bastion_public_dns"
  type      = "String"
  value     = "${module.bastion_load_balancer.dns_name}"
  overwrite = true
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name      = "/${var.estate_id}/${var.component}/${var.service}/${var.deployment_id}/private_subnet_ids"
  type      = "StringList"
  value     = "${module.base-network.private_subnet_ids}"
  overwrite = true
}

resource "aws_ssm_parameter" "allow_ssh_from_bastion_security_group_id" {
  name      = "/${var.estate_id}/${var.component}/${var.service}/${var.deployment_id}/allow_ssh_from_bastion_security_group_id"
  type      = "String"
  value     = "${module.bastion.allow_ssh_from_bastion_security_group_id}"
  overwrite = true
}
