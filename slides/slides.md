!SLIDE center title blue

# Terraforming PeopleSoft

!SLIDE center title orange

# Let's build training environments

!SLIDE center title orange

# IN THE CLOUD!

!SLIDE center title white

![HashiCorp Logo](../_images/HashiCorp_PrimaryLogo_Black.png)

!SLIDE center title black

![HashiCorp Products](../_images/HashiCorpSuite_OpenSource_StackGraphic.png)

!SLIDE center title purple

![Teraform Logo](../_images/Terraform_PrimaryLogo_White.png)

!SLIDE center title green

# Infrastructure as Code

!SLIDE center title green

# Vagrant -> Workstation

!SLIDE center title green

# Terraform -> Infrastructure

!SLIDE center title white

    @@@ruby
    resource "aws_instance" "training" {
      ami           = "ami-c9a714b6"
      instance_type = "t2.large"
      private_ip    = "10.0.0.11"

      root_block_device {
        volume_size = "200"
      }
    }

!SLIDE center title white

    @@@ruby
    resource "aws_security_group" "training" {
      description = "Allow SSH"
      vpc_id      = "${element(
                        aws_vpc.main.*.id, 
                        count.index)}"
      count       = "${var.servers}"

      ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }

~~~SECTION:notes~~~
1. Kick off a Terraform Build
1. What is Terraform
1. How do you code Terraform
~~~ENDSECTION~~~
