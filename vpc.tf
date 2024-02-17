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
  tags = {
    Name = "lms-public-subnet-a"
  }
}
