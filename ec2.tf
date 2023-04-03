# Create an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-00c39f71452c08778" # Set your desired AMI here
  instance_type = "t2.micro" # Set your desired instance type here
  # key_name      = "my_key_pair"
  user_data     = <<-EOF
                  #!/bin/bash
                  sudo yum update -y
                  sudo yum install -y s3cmd
                  s3cmd put /home/ec2-user/myfile s3://${aws_s3_bucket.my_bucket.id}/myfile
                  EOF
}

