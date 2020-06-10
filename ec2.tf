
resource "aws_instance" "web" {
 ami = "ami-026dea5602e368e96"
 instance_type = "t2.micro"
 iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"
 tags = {
  Name = "testinstance"

}

}

