terraform {
  backend "s3" {
    bucket = "terraform44"
    key    = "path/terraform"
    region = "us-east-1"
    dynamodb_table= "test"
  }
}
