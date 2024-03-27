terraform {
  backend "s3" {
    bucket = "expensestatefile"
    key    = "tools/state"
    region = "us-east-1"
  }
}