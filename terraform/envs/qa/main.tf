

module "cloudrun" {
  source = "../../modules/cloudrun"
}

resource "null_resource" "prqa1" {}
resource "null_resource" "prfeatureqa" {}
resource "null_resource" "featureqa1" {}
resource "null_resource" "featureqa2" {}
resource "null_resource" "featureqa3" {}
resource "null_resource" "featureqa4" {}

resource "null_resource" "devqafeature1" {}
resource "null_resource" "devqafeature2" {}