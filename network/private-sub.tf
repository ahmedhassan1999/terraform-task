resource "aws_subnet" "priv-1" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = var.private-sub1_cidr 
  #"10.0.3.0/24"
  availability_zone = var.zone1

  tags = {
    Name = "${var.name}-priv-1"
  }
}   

resource "aws_subnet" "priv-2" {
  vpc_id     =aws_vpc.mainvpc.id
  cidr_block = var.private-sub2_cidr 
  #"10.0.4.0/24"
  availability_zone = var.zone2

  tags = {
    Name = "${var.name}-priv-2"
  }
}