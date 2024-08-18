variable "aws_access_key" {
  type    = string
  default = ""
}
variable "aws_secret_key" {
  type    = string
  default = ""
}
packer {
  required_plugins {
    amazon = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/amazon"
    }
  }
}
source "amazon-ebs" "example" {
  region           = "ap-south-1"
  source_ami       = "ami-0ad21ae1d0696ad58"
  instance_type    = "t2.micro"
  ssh_username     = "ubuntu"
  ami_name         = "packer-newAM-{{timestamp}}"
  access_key       = var.aws_access_key
  secret_key       = var.aws_secret_key
}
build {
  sources = ["source.amazon-ebs.example"]
  provisioner "shell" {
    inline = [
      "sudo apt-get update -y",
      "wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb",
      "sudo dpkg -i -E ./amazon-cloudwatch-agent.deb",
      "sudo snap remove amazon-ssm-agent",
      "wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_amd64/amazon-ssm-agent.deb",
      "sudo dpkg -i amazon-ssm-agent.deb",
      "sudo systemctl enable amazon-ssm-agent",
      "sudo systemctl start amazon-ssm-agent",
      "sudo apt-get install -y docker.io",
      "sudo apt-get install -y git"
    ]
  }
}
