resource "aws_cloudfront_distribution" "example" { 
  # Origin configuration: Defines the source of your content (S3 bucket)
  origin { 
    domain_name = "my-bucket.s3.amazonaws.com" 
    origin_id   = "S3-my-bucket" 
  } 
 
# Enable the distribution (whether it's active or not)
enabled = true 

# Default Cache Behavior: Defines the caching behavior for CloudFront
  default_cache_behavior { 
    target_origin_id = "S3-my-bucket" 
    viewer_protocol_policy = "redirect-to-https" 
  } 
}