provider "google" {
    project = var.project_id
    region = var.region
}
# VPC
resource "google_compute_network" "gke-vpc" {
    name = "${var.project_id}-gke-vpc"
    auto_create_subnetworks = false
  
}
# Subnet
resource "google_compute_subnetwork" "gke-subnet" {
    name = "${var.project_id}-gke-subnet"
    region = var.region
    network = google_compute_network.gke-vpc.name
    ip_cidr_range = "10.128.0.0/24"
}
