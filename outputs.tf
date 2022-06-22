
output "jenkins_ip" {
  value = format("https://%s:%s", aws_instance.jenkins-build-agent.public_ip, var.jenkins_port)
}

