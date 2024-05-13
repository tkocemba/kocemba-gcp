

module "cloudrun" {
  source = "../../modules/cloudrun"
}

resource "null_resource" "criticalbug1" {}
