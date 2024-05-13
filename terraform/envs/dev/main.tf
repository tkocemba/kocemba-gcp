

module "cloudrun" {
  source = "../../modules/cloudrun"
}
//


resource "null_resource" "pr1dev1" {}
resource "null_resource" "prdev2" {}
resource "null_resource" "prdevfeature1" {}
resource "null_resource" "prdevfeature2" {}


locals {
  command = "set -u; echo $${env}"
}

resource "null_resource" "prdevfeaturebug" {
  provisioner "local-exec" {
    command = local.command
  }
  triggers = {
    command_sha1=sha1(local.command)
  }
}


