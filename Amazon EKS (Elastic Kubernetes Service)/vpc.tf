resource "aws_vpc" "eks_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "eks-vpc"
  }
}

resource "aws_subnet" "eks_subnet_public" {
  vpc_id = aws_vpc.eks_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"  
  map_public_ip_on_launch = true
  tags = {
    Name = "eks-public-subnet"
  }
}

resource "aws_subnet" "eks_subnet_private" {
  vpc_id = aws_vpc.eks_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"  
  tags = {
    Name = "eks-private-subnet"
  }
}