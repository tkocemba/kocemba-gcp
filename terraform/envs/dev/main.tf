

module "cloudrun" {
  source = "../../modules/cloudrun"
}
//


resource "null_resource" "pr1dev1" {}
resource "null_resource" "prdev2" {}
resource "null_resource" "prdevfeature1" {}



