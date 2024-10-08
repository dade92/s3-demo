resource "aws_route53_record" "images-record" {
  zone_id = "Z01401972E5NVI2LD2MZT"
  name    = aws_s3_bucket.s3-bucket.bucket
  type    = "CNAME"
  records = [aws_s3_bucket.s3-bucket.bucket_regional_domain_name]
  ttl     = 600
}

# TODO use this if you want to use cloudfront
# resource "aws_route53_record" "cdn_record" {
#   zone_id = "Z01401972E5NVI2LD2MZT"
#   name    = "images.davidebotti.com"
#   type    = "A"
#
#   alias {
#     name                   = aws_cloudfront_distribution.cdn.domain_name
#     zone_id                = aws_cloudfront_distribution.cdn.hosted_zone_id
#     evaluate_target_health = false
#   }
# }