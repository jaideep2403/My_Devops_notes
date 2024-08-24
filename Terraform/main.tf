provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "pubsubaz1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "pub_sub_az1"
  }
}

resource "aws_subnet" "pubsubaz2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "pub_sub_az2"
  }
}

resource "aws_subnet" "prisubaz1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "pri_sub_az1"
  }
}

resource "aws_subnet" "prisubaz2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "pri_sub_az2"
  }
}

resource "aws_subnet" "secsubazz1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.5.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "sec_sub_az1"
  }
}

resource "aws_subnet" "secsubaz2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.6.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "sec_sub_az2"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "igw"
  }
}


resource "aws_route_table" "rtb" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "public-rt"
  }
}

#associate public subnet to public route table
resource "aws_route_table_association" "rts1" {
  subnet_id      = aws_subnet.pubsubaz1.id
  route_table_id = aws_route_table.rtb.id
}

resource "aws_route_table_association" "rts2" {
  subnet_id      = aws_subnet.pubsubaz2.id
  route_table_id = aws_route_table.rtb.id
}

resource "aws_eip" "eip1" {
  domain = "vpc"
}


#creating nat gateway
resource "aws_nat_gateway" "natgw1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.pubsubaz1.id

  tags = {
    Name = "gw NAT1"
  }
  depends_on = [aws_internet_gateway.igw]
}


#route table for private subnet


# Private Route Table 1 (NAT Gateway 1)
resource "aws_route_table" "rtb2" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw1.id
  }
  tags = {
    Name = "private-rt1"
  }
}

resource "aws_route_table_association" "rts3" {
  subnet_id      = aws_subnet.prisubaz1.id
  route_table_id = aws_route_table.rtb2.id
}

resource "aws_route_table_association" "rts4" {
  subnet_id      = aws_subnet.prisubaz2.id
  route_table_id = aws_route_table.rtb2.id
}

# Private Route Table 2 (NAT Gateway 2)


# Associate Private Subnets to Private Route Tables



resource "aws_security_group" "mysg" {
  name   = "web"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

