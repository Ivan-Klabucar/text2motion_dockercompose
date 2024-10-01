# Heavily redacted because this is going to a public github repo
module "ec2_instance" {
  source = "./terraform_configs/aws/ec2_instance"
}

# Redacted, not pushing this to public github repo
#module "alb" {
#  source = "./terraform_configs/aws/alb"
#}

# Heavily redacted because this is going to a public github repo
module "s3" {
  source = "./terraform_configs/aws/s3"
}
