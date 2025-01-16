resource "aws_cloudfront_distribution" "example" { 
  origin { 
    domain_name = "my-bucket.s3.amazonaws.com" 
    origin_id   = "S3-my-bucket" 
  } 
 

enabled             = true 
  default_cache_behavior { 
    target_origin_id = "S3-my-bucket" 
    viewer_protocol_policy = "redirect-to-https" 
  } 
}