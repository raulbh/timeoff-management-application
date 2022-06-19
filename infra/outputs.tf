output "region" {
  description = "Cluster Region"
  value = var.region
}

output "project_id" {
    description = "Project ID"
    value = var.project_id
  
}

output "kubernetes_cluster_name" {
    description = "Cluster Name"
    value = google_container_cluster.my-cluster.name
  
}

output "kubernetes_cluster_host" {
    description = "Cluster Endpoint"
    value = google_container_cluster.my-cluster.endpoint
  
}

output "artifact_repository" {
    description = "Artifact repository"
    value = google_artifact_registry_repository.my_repo.name
  
}