resource "aws_instance" "instance" {
  ami                         = var.ami
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.public_key_pair.id
  vpc_security_group_ids      = [aws_security_group.sec-group1.id]
  subnet_id                   =  module.network.public-sub1_id
  associate_public_ip_address = true

  root_block_device {
    volume_size           = 8
    delete_on_termination = true
  }

  tags = {
    Name = "public-ec1"
  }
}

resource "aws_instance" "instance2" {
  ami                         = var.ami
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.public_key_pair.id
  vpc_security_group_ids      = [aws_security_group.sec-group2.id]
  subnet_id                   =  module.network.private-sub1_id
  associate_public_ip_address = false

  root_block_device {
    volume_size           = 8
    delete_on_termination = true
  }

  tags = {
    Name = "private-ec1"
  }
}