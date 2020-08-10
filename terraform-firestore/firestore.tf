provider "google" {
  credentials = file("class-express-billing-be1a5dec70ee.json")
}

resource "google_project" "my_project" {
  name = "My Project"
  project_id = "class-express-billing"
}

resource "google_app_engine_application" "app" {
  project     = google_project.my_project.project_id
  location_id = "us-central1"
  database_type = "CLOUD_FIRESTORE"
}