resource "aws_security_group" "sec-group1" {
  name        = "sec-group1"
  description = "open ssh on port 22"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "open 22 to ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sec-group1"
  }
}
resource "aws_security_group" "sec-group2" {
  name        = "sec-group2"
  description = "open ssh on port 22 and 3000"
  vpc_id      = module.network.vpc_id

  ingress {
    description      = "open 22 to ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [module.network.vpc_cidr]
  }
  ingress {
    description      = "open 3000"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [module.network.vpc_cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sec-group23"
  }
}