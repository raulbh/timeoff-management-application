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
    secondary_ip_range {
        ip_cidr_range = "10.9.0.0/20"
        range_name = "us-central1-01"
    }
    secondary_ip_range {
        ip_cidr_range = "10.10.0.0/20"
        range_name = "us-central1-02"
    }

}
