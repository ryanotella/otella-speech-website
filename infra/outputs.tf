output "bucket_arn" {
  value = aws_s3_bucket.website.arn
}

output "distribution_id" {
  value = aws_cloudfront_distribution.website.id
}

output "distribution_arn" {
  value = aws_cloudfront_distribution.website.arn
}

output "distribution_domain_name" {
  value = aws_cloudfront_distribution.website.domain_name
}

output "certificate_arn" {
  value = aws_acm_certificate.website.arn
}

output "origin_access_control_id" {
  value = aws_cloudfront_origin_access_control.website.id
}
