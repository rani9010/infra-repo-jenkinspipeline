resource "aws_vpc" "myvpc" {
    cidr_block = "0.0.0.0/0"
    tags = {
      Name = "jenkinsnetwork"
    }  
}
resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.myvpc
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      Name = "jenkinssubnet"
    }
  
}