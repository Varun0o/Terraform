Terraform-EKS
Repository to create EKS on AWS using Terraform.

Install AWS CLI
As the first step, you need to install AWS CLI as we will use the AWS CLI (aws configure) command to connect Terraform with AWS in the next steps.

Follow the below link to Install AWS CLI.

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

Install Terraform
Next, Install Terraform using the below link.

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

Connect Terraform with AWS
It's very easy to connect Terraform with AWS. Run the aws configure command and provide the AWS Security credentials as shown in the video.

Initialize Terraform
Clone the repository and Run terraform init. This will initialize the terraform environment for you and download the modules, providers, and other configurations required.

Optionally review the terraform configuration
Run the terraform plan to see the configuration it creates when executed.

Finally, Apply terraform configuration to create an EKS cluster with VPC
terraform apply
