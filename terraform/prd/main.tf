

module "cloudrun" {
  source = "../modules/cloudrun"
}
resource "null_resource" "a" {}
resource "null_resource" "b" {}
resource "null_resource" "c" {}
resource "null_resource" "ddd" {}
