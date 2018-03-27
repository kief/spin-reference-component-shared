variable "estate_id" {}
variable "deployment_id" {}
variable "component" {}
variable "service" {}
variable "network_service_name" {}

variable "region" { default = "eu-west-1" }
variable "ami" { default = "ami-63b0341a" }

variable "webserver_ssh_key_file" {}
variable "allowed_cidr" {}


