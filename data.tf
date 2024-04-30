data "aws_ami" "ami1" {
  most_recent = true
  owners      = ["amazon"]  # Change this to a list of strings

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]  # Change this to a list of strings
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]  # Change this to a list of strings
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]  # Change this to a list of strings
  }
}