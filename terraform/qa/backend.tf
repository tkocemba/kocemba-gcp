#
terraform {
  backend "gcs" {
    bucket = "kocemba-state-tf"
    prefix = "kocemba-gcp-qa"
    impersonate_service_account = "tf-state@kocemba-state.iam.gserviceaccount.com"
  }
}