provider "aws" {
    region = "eu-west-1"
}

resource "aws_elastic_beanstalk_application" "my_ebs" {
    name = "coffee-service"
}

resource "aws_elastic_beanstalk_environment" "my_ebs_staging" {
    application            = "coffee-service"
    name                   = "staging"
    solution_stack_name    = "64bit Amazon Linux 2017.09 v2.6.5 running Java 8"
}
