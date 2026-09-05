variable "aws_region" {
  description = "Primary AWS region for the site's resources."
  type        = string
  default     = "ap-southeast-2"
}

variable "bucket_name" {
  description = "Name of the S3 bucket serving website content."
  type        = string
  default     = "otella-speech-website"
}

variable "domain_name" {
  description = "Apex domain served by the site."
  type        = string
  default     = "otellaspeech.com.au"
}

variable "www_domain_name" {
  description = "www subdomain served by the site."
  type        = string
  default     = "www.otellaspeech.com.au"
}

variable "hosted_zone_id" {
  description = "Route53 hosted zone ID for the domain (zone itself is not managed by this module)."
  type        = string
  default     = "Z03121491EJZ4HW3Y7Y10"
}
