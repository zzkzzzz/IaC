// configure the named provider: google
provider "google" {
  version = "3.5.0"

  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

// resource that exists within the infrastructure
//  the resource type => "google_compute_network"
// the resource name => "vpc_network"
# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network"
# }

# resource "google_sql_database" "database" {
#   name     = "my-database"
#   instance = "main-sql-instance"
# }


// reference: https://www.terraform.io/docs/providers/google/d/sql_database_instance.html
resource "google_sql_database_instance" "postgres" {
  name             = "main-sql-instance"
  database_version = "POSTGRES_12"
  region           = "asia-southeast1" # Singapore

   settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}
