# to create vpc
resource "aws_vpc" "lms-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "lms"
  }
}

# to create public subnet-A

resource "aws_subnet" "lms-public-sn-A" {
  vpc_id     = aws_vpc.lms-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone ="ap-south-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "lms-public-subnet-A"
  }
}
# to create public subnet-B

resource "aws_subnet" "lms-public-sn-B" {
  vpc_id     = aws_vpc.lms-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone ="ap-south-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "lms-public-subnet-B"
  }
}
# to create private subnet-A

resource "aws_subnet" "lms-private-sn-A" {
  vpc_id     = aws_vpc.lms-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone ="ap-south-1b"
  tags = {
    Name = "lms-private-subnet-A"
  }
}
# to create private subnet-A

resource "aws_subnet" "lms-private-sn-B" {
  vpc_id     = aws_vpc.lms-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone ="ap-south-1b"
  tags = {
    Name = "lms-private-subnet-B"
  }
}

