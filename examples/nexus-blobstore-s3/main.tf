provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Blobstore S3
################################################################################
module "nexus_blobstore_s3" {
  source = "../../modules/nexus-blobstore-s3"

  name = "blobstore-s3"

  bucket_configuration = {
    bucket = {
      name       = "aws-bucket-name"
      region     = "us-central-1"
      expiration = -1
    }

    bucket_security = {
      access_key_id     = "<your-aws-access-key-id>"
      secret_access_key = "<your-aws-secret-access-key>"
    }
  }

  soft_quota = {
    limit = 100000
    type  = "spaceRemainingQuota"
  }
}
