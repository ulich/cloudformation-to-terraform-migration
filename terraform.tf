provider "aws" {
    region = "eu-west-1"
}

resource "aws_elastic_beanstalk_application" "my_ebs" {
}

resource "aws_elastic_beanstalk_environment" "my_ebs_staging" {
}
