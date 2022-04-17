resource "aws_route_table" "public1-tb" {
  vpc_id = aws_vpc.mainvpc.id

  route {
        cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = "public1-tb"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.pub-1.id
  route_table_id = aws_route_table.public1-tb.id
}
resource "aws_route_table_association" "aa" {
  subnet_id      = aws_subnet.pub-2.id
  route_table_id = aws_route_table.public1-tb.id
}
