library(googleCloudStorageR)
library(arrow)

Sys.setenv("GCS_AUTH_FILE" = "~/tiltwebtool-05cc9780c224.json")
# Authenticate using the service account key
gcs_auth()  # FIXME

# Set your project and bucket name
project_id <- "your-project-id"
bucket_name <- "your-bucket-name"

