# Terraform Enterprise installation in External Services mode on AWS


# Prerequisites
Install and configure Terraform as per [official documentation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

AWS account

TFE license file

# How To

## Clone repository

```
git clone https://github.com/dmitryuchuvatov/tfe-es.git
```

## Change folder

```
cd tfe-es
```

## Save your TFE license file in *config* folder and name it *license.rli*

## Open *terraform.tfvars* and change the values per your requirements

## Set AWS credentials

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
```

## Terraform init
```
terraform init
```

## Terraform apply

```
terraform apply
```

When prompted, type **yes** and hit **Enter** to start provisioning AWS infrastructure and installing TFE on it


## Using TFE

You should see the similar result:

```
Outputs:

replicated_dashboard = "https://tfe-es-demo.tf-support.hashicorpdemo.com:8800"
ssh_login = "ssh -i tfesshkey.pem ubuntu@tfe-es-demo.tf-support.hashicorpdemo.com"
tfe_login = "https://tfe-es-demo.tf-support.hashicorpdemo.com"
```

It's recommended to wait ~5 minutes before navigating to above-mentioned links as the configuration takes extra time to apply.
After that, you can start using Terraform Enterprise in External Services mode
