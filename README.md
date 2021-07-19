# Terraform Cheetsheet
Library of Terraform Modules to perform IAC

## Install Terraform

Download Terraform from path https://www.terraform.io/downloads.html and put it in your OS PATH.

```
apple@apples-MacBook-Air project01 % ~/Softwares/terraform -version
Terraform v1.0.2
on darwin_amd64
+ provider registry.terraform.io/hashicorp/aws v3.50.0
+ provider registry.terraform.io/hashicorp/template v2.2.0
```

> Now you should be all setup for Terraform-ing your infrastructure automation.

## Setup for AWS

### There are two ways you can provide the authentication details for Terraform to authenticate to AWS:

- `Environment Variable`

In Unix system set environment 
```
export AWS_ACCESS_KEY_ID="AWS ACCOUNT ACCESS KEY"
export AWS_SECRET_ACCESS_KEY="AWS ACCOUNT ACCESS SECRET"
export AWS_DEFAULT_REGION="AWS ACCOUNT DEFAULT REGION"
```

- `Inside your module script`
```
provider "aws" {
    region = "${var.region}"
    access_key = "AWS ACCOUNT ACCESS KEY"     <---
    secret_key = "AWS ACCOUNT ACCESS SECRET"  <---
}
```

### To download AWS Plugin for Terraform to talk to AWS you can do initialization with a Terraform AWS `provider defination` in your project script.

```
# Provider defination
provider "aws" {
    region = "${var.region}"
}
```

Initialize 

```
apple@apples-MacBook-Air project01 % ~/Softwares/terraform init
```

### To execute

You can validate your setup with
```
apple@apples-MacBook-Air s3 % ~/Softwares/terraform plan
```

> Look for + for new resource created.

To apply your code interactive
```
apple@apples-MacBook-Air s3 % ~/Softwares/terraform apply
```

To apply your code interactive
```
apple@apples-MacBook-Air s3 % ~/Softwares/terraform apply -auto-approve
```

To clean up your deployment
```
apple@apples-MacBook-Air s3 % ~/Softwares/terraform destroy -auto-approve
```

