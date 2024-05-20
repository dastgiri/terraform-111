resource "aws_vpc" "firstvpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = "main"
  }

}

resource "aws_subnet" "subnets" {
count = length(var.az)
  availability_zone = var.az[count.index]
  vpc_id            = aws_vpc.firstvpc.id
  cidr_block        = var.subnet[count.index]
  tags = {
   Name = var.tagging[count.index]
  }
  
}

#resource "aws_subnet" "secondubnet" {
#  availability_zone = "ap-south-1b"
#  vpc_id            = aws_vpc.firstvpc.id
#  cidr_block        = var.secondarysubnet
#  tags = {
#    Name = "privatesubnet"
#  }
#}