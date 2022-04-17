resource "aws_subnet" "pub-1" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = var.public-sub1_cidr 
  #"10.0.1.0/24"
  availability_zone = var.zone1

  tags = {
    Name = "${var.name}-pub-1"
  }
}   

resource "aws_subnet" "pub-2" {
  vpc_id     =aws_vpc.mainvpc.id
  cidr_block = var.public-sub2_cidr 
  #"10.0.2.0/24"
  availability_zone = var.zone2

  tags = {
    Name = "${var.name}-pub-2"
  }
}