# resource "aws_cloudfront_distribution" "my-distribution" {
#   origin {
#     domain_name = aws_s3_bucket.s3-bucket.bucket_regional_domain_name
#     origin_id   = "S3-Origin"
#   }
#
#   enabled = true
#
#   default_cache_behavior {
#     allowed_methods  = ["GET", "HEAD"]
#     cached_methods   = ["GET", "HEAD"]
#     target_origin_id = "S3-Origin"
#
#     viewer_protocol_policy = "allow-all"
#
#     min_ttl     = 0
#     default_ttl = 3600
#     max_ttl     = 86400
#
#     forwarded_values {
#       query_string = false
#
#       cookies {
#         forward = "none"
#       }
#     }
#   }
#
#   restrictions {
#     geo_restriction {
#       restriction_type = "none"
#     }
#   }
#
#   viewer_certificate {
#     cloudfront_default_certificate = true
#   }
# }
#
# output "cloudfront_url" {
#   value = aws_cloudfront_distribution.my-distribution.domain_name
# }