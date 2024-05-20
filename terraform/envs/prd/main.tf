

module "cloudrun" {
  source = "../../modules/cloudrun"
}

resource "null_resource" "criticalbug1" {}
resource "null_resource" "criticalbug2" {}
resource "null_resource" "criticalbug3" {}
resource "null_resource" "criticalbug11" {}
