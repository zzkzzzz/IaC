// configurations
variable "project" { 
    default="gcpwithterraform-286007"
}

variable "credentials_file" { 
    default="./CloudSQLkey.json"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}