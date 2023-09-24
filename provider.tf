provider "aws" {
  # Configuration options
  region     = "ap-south-1"
  access_key = "*********************"
  secret_key = "*********************"
}

resource "aws_key_pair" "douser" {
  key_name   = "douser"
  public_key = file("${path.module}/douser")
}