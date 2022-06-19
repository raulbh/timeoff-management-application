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
variable "cluster_secondary_range_name" {
    description = "Secondary range name for the subnetwork"
    type = string
    default = "pod-cidr-range"
}

variable "services_secondary_range_name" {
    description = "Services range name for the subnetwork"
    type = string
    default = "service-cidr-range"
}