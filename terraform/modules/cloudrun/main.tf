resource "google_cloud_run_service" "default" {
  count = var.enable ? 1:0
  name     = "cloudrun-srv"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}


data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  count = var.enable ? 1:0
  location    = google_cloud_run_service.default[0].location
  project     = google_cloud_run_service.default[0].project
  service     = google_cloud_run_service.default[0].name

  policy_data = data.google_iam_policy.noauth.policy_data
}

resource "null_resource" "c" {}
resource "null_resource" "d" {}
resource "null_resource" "dd" {}
