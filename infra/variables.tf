variable "project_id" {
    description = "project_id"
}

variable "region" {
    description = "region"
}

variable "gke_num_nodes" {
    description = "number of nodes"
    default = 1
}

variable "repository_id" {
    description = "Artifact repository"
    default = "gcp-repo"
  
}