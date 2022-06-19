terraform {
    backend "gcs" {
        bucket = "project-01-raulbh-tfstate"
        #bucket = "${var.project_id}-tfstate"
        prefix = "infra"
    }
}
