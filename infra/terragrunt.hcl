locals {
  aws_region = "ap-southeast-2"
}

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket       = "otella-speech-website-tfstate-227409417368"
    key          = "live/prod/terraform.tfstate"
    region       = local.aws_region
    encrypt      = true
    use_lockfile = true
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "${local.aws_region}"

  default_tags {
    tags = {
      Project   = "otella-speech-website"
      ManagedBy = "terragrunt"
    }
  }
}

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"

  default_tags {
    tags = {
      Project   = "otella-speech-website"
      ManagedBy = "terragrunt"
    }
  }
}
EOF
}

terraform_binary = "tofu"
