# resource "aws_cloudfront_origin_access_control" "s3_oac" {
#   name                              = "images-davidebotti-oac"
#   origin_access_control_origin_type = "s3"
#   signing_behavior                  = "always"
#   signing_protocol                  = "sigv4"
# }
#
# resource "aws_cloudfront_distribution" "cdn" {
#   enabled = true
#
#   origin {
#     domain_name = aws_s3_bucket.s3-bucket.bucket_regional_domain_name
#     origin_id   = "s3-${aws_s3_bucket.s3-bucket.bucket_domain_name}"
#   }
#
#   viewer_certificate {
#     cloudfront_default_certificate = true
#   }
#
#   default_cache_behavior {
#     allowed_methods        = ["GET", "HEAD"]
#     cached_methods         = ["GET", "HEAD"]
#     target_origin_id       = "s3-${aws_s3_bucket.s3-bucket.bucket_domain_name}"
#     viewer_protocol_policy = "allow-all" # Allow both HTTP and HTTPS (HTTP only in practice since no cert)
#
#     forwarded_values {
#       query_string = false
#       cookies {
#         forward = "none"
#       }
#     }
#
#     min_ttl     = 0
#     default_ttl = 3600
#     max_ttl     = 86400
#   }
#
#   restrictions {
#     geo_restriction {
#       restriction_type = "none"
#     }
#   }
#
#   aliases = ["images.davidebotti.com"]
# }
#
# #
# # output "cloudfront_url" {
# #   value = aws_cloudfront_distribution.my-distribution.domain_name
# # }