output "public-sub1_id" {
    value = aws_subnet.pub-1.id
  
}
output "public-sub2_id" {
    value = aws_subnet.pub-2.id
  
}
output "private-sub1_id" {
    value = aws_subnet.priv-1.id
  
}
output "private-sub2_id" {
    value = aws_subnet.priv-2.id
  
}
output "vpc_id" {

  value = aws_vpc.mainvpc.id
}
output "vpc_cidr" {

  value = aws_vpc.mainvpc.cidr_block
}