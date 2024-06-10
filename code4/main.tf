resource "aws_lightsail_instance" "custom" {
  name              = "my-server"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         =  file("install.sh")
  key_pair_name     = "rich-key"
  tags = {
    team      = "Devops"
    env       = "Dev"
    create_by = "terraform"
  }

}

resource "aws_lightsail_instance" "custom1" {
  name              = "my-server1"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         =  file("install.sh")
  key_pair_name     = "rich-key"
  tags = {
    team      = "Devops"
    env       = "Dev"
    create_by = "terraform"
  }

}

resource "aws_iam_group" "group" {
  name = "cloudteam"
}
resource "aws_iam_user" "user" {
    name = "u5bt2024"
  
}