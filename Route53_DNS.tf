resource "aws_route53_record" "example" {    #
  zone_id = "Z123456789"        #Specifies the ID of the hosted zone in Route 53 where this record will be created.
  name    = "www.example.com"       #The DNS name for which this record is created.
  type    = "A"             #The DNS record type. Example: "A" indicates an IPv4 address record, which maps the domain name to an IPv4 address.
  ttl     = 300             #time-to-live (TTL) for the DNS record, in seconds.
  records = ["1.2.3.4"]     #ip address- Specifies the value(s) for the DNS record.
}