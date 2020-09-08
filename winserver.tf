// EC2 terraform create Windows 2019 Server
//
terraform {
        required_providers {
                aws = {
                        source = "hashicorp/aws"
                        }
                }
        }


resource "aws_instance" "myWinServer" {
// Windows 2019 image
        ami = "ami-0f1b69453843f0ff5"
        instance_type = "t2.micro"
        key_name = "MyKey"
        subnet_id = "subnet-06d4f69195281a72b"
// sg allow rdp = ###9b6 , ssh = ###3b7
        vpc_security_group_ids = [
                "sg-0dd7fb01b7295c9b6", "sg-0412309b76be8b3b7"
        ]
        tags = {
// update name after terraform already created.                
                Name = "Windows Server"
                Environment = "Terraform created github actions"
        }
}
