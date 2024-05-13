

module "cloudrun" {
  source = "../../modules/cloudrun"
}
//

resource "null_resource" "dev1" {}

resource "null_resource" "prdev2" {}