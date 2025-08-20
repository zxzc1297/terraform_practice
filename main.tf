resource "aws_instance" "example" {
  # LocalStack에서는 AMI ID가 검증되지 않으므로 더미 값을 사용합니다.
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "MyLocalTestServer"
  }
}
