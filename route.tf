resource "aws_route53_record" "images-record" {
  zone_id = "Z01401972E5NVI2LD2MZT"
  name    = aws_s3_bucket.s3-bucket.bucket
  type    = "CNAME"
  records = [aws_s3_bucket.s3-bucket.bucket_regional_domain_name]
  ttl = 600
}
