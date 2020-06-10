resource "aws_iam_role_policy" "s3_policy" {
  name = "s3_policy"
  role = "${aws_iam_role.ec2_role.id}"
  policy = "${file("s3-policy.json")}"

}


resource "aws_iam_role" "ec2_role" {

  name  = "ec2_role"
  assume_role_policy = "${file("ec2-assume-policy.json")}"

}


resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = "${aws_iam_role.ec2_role.name}"

}

