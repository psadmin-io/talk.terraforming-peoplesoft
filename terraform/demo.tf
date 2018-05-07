# AWS Defaults
provider "aws" {
    region = "us-east-1"
}

# Amazon Linux Instance
resource "aws_instance" "demo" {
  ami           = "ami-467ca739"
  instance_type = "t2.large"
  count         = "1"
}

# Display Public DNS
output "address" {
  value = "${aws_instance.demo.public_dns}"
}
