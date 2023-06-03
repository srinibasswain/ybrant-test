provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east-1"
}

resource "aws_instance" "Myfirstinstance" {

  vpc_id                 =  "vpc-3983903"
  ami                    = "ami-028038"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-3883"
  vpc_security_group_ids = ["sg.id"]

  tags = {
    Name          = "ec2_name"
    ProductCode   = "product_code"
    Customers     = "customer_name"
    Function      = "function"
    RemedyGroup   = "remedy_group"
    ServiceLevel  = "service_level"
    SecurityClass = "security_class"

  }
}