# GKE cluster
resource "google_container_cluster" "my-cluster" {
    name = "${var.project_id}-my-cluster"
    location = var.region
    remove_default_node_pool = true
    initial_node_count =1

    network = google_compute_network.gke-vpc.name
    subnetwork = google_compute_subnetwork.gke-subnet.name
}

# Separate node pool - managed
resource "google_container_node_pool" "my-pool" {
    name = "${google_container_cluster.my-cluster.name}-my-pool"
    location = var.region
    cluster = google_container_cluster.my-cluster.name
    node_count = var.gke_num_nodes

    node_config {
      oauth_scopes = [
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
      ]

      labels = {
        env = var.project_id
      }

      machine_type = "e2-medium"
      tags = ["gke-node","${var.project_id}-gke"]
      metadata = {
        "disable-legacy-endpoints" = "true"
      }
    }

}