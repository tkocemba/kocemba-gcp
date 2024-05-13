

module "cloudrun" {
  source = "../../modules/cloudrun"
}

resource "null_resource" "prqa1" {}
resource "null_resource" "prfeatureqa" {}
resource "null_resource" "featureqa1" {}