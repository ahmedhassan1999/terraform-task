resource "aws_eip" "lb" {
  vpc      = true
  tags = {
    "Name" = "elip"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.pub-1.id

  tags = {
    Name = "gw NAT"
  }

}


resource "aws_route_table" "priva1-tb" {
  vpc_id = aws_vpc.mainvpc.id

  route {
        cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }


  tags = {
    Name = "privat1-tb"
  }
}

resource "aws_route_table_association" "asso-private" {
  subnet_id      = aws_subnet.priv-1.id
  route_table_id = aws_route_table.priva1-tb.id
}
resource "aws_route_table_association" "asso-private1" {
  subnet_id      = aws_subnet.priv-2.id
  route_table_id = aws_route_table.priva1-tb.id
}