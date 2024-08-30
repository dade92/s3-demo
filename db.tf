resource "aws_dynamodb_table" "customer_table" {
  name         = "Customer"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "ID"
  #   range_key = "username"

  attribute {
    name = "ID"
    type = "S"
  }

  attribute {
    name = "username"
    type = "S"
  }

  global_secondary_index {
    name            = "UsernameIndex"
    hash_key        = "username"
    projection_type = "ALL"

    read_capacity  = 5
    write_capacity = 5
  }

  tags = {
    Name        = "Customer"
    Environment = "dev"
  }
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.customer_table.name
}