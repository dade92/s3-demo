resource "aws_dynamodb_table" "customer_table" {
  name     = "Customer"
  billing_mode = "PAY_PER_REQUEST"  # Use on-demand billing
  hash_key = "ID"             # Primary key for the table

  attribute {
    name = "ID"
    type = "S"  # 'S' for string type
  }

  tags = {
    Name        = "Customer"
    Environment = "dev"  # Change this tag as needed
  }
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.customer_table.name
}