

module "cloudrun" {
  source = "../../modules/cloudrun"
}

resource "null_resource" "criticalbug1" {}
resource "null_resource" "criticalbug2" {}
