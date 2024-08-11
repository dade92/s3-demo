resource "aws_route53_record" "images-record" {
  zone_id = "Z01401972E5NVI2LD2MZT"
  name    = "images.davidebotti.com"
  type    = "CNAME"
  records = ["images.davidebotti.com.s3.eu-central-1.amazonaws.com"]
  ttl = 600
}
