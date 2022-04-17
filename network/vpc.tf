resource "aws_vpc" "mainvpc" {
  cidr_block = var.vpc_cidr 
  #"10.0.0.0/16"
  tags = {
      Name = var.name
  }
  enable_dns_support="true"
  enable_dns_hostnames="true"
}
