provider "aws" {
  region = "eu-central-1"
}


resource "aws_dynamodb_table" "users-table" {
  name           = "users"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"

  attribute {
    name = "UserId"
    type = "S"
  }



  tags = {
    Name        = "users"
    Environment = "production"
  }
}