
/* Using AWS as your provider and that you want to deploy your infrastructure into the us-east-2 region */

provider "aws" { 
    region = "us-east-2"
}

/* For each type of provider, there are many different kinds of resources that you can create, such as servers, databases, and load balancers.  */
/* The aws_instance resource supports many different arguments, but for now, you only need to set the two required ones: 

    - ami : The Amazon Machine Image (AMI) to run on the EC2 Instance.
    - instance_type: The type of EC2 Instance to run. Each type of EC2 Instance provides a different amount of CPU, memory, disk space, and networking capacity.
*/

resource "aws_instance" "example" {
    ami = "ami-0fb653ca2d3203ac1" # sets the ami parameter to the ID of an Ubuntu 20.04 AMI in us-east-2 as mentioned above in provider. 
    instance_type = "t2.micro"

    tags = { # EC2 Instance doesn’t have a name. To add one, you can add tags to the aws_instance resource:
      Name = "terraform-example"
    }
}