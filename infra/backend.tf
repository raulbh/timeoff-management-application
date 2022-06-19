# To store tfstate on gcs just remove the comment and change PROJECT_ID with the project to use
# Note that you will need to create the bucket first
#terraform {
    #backend "gcs" {
        #bucket = "PROJECT_ID-tfstate"
        #prefix = "infra"
    #}
#}
