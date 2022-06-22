
resource "aws_instance" "jenkins-build-agent" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins.id]
  user_data              = file("${path.module}/template/jenkins.sh")
  iam_instance_profile   = local.instance_profile

  tags = {
    Name = "Jenkins-build-agent"
  }
}