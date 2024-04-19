#
terraform {
  backend "gcs" {
    bucket = "kocemba-state-tf"
    prefix = "kocemba-gcp-prd"
    impersonate_service_account = "tf-state@kocemba-state.iam.gserviceaccount.com"
  }
}