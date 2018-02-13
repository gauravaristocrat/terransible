# terransible
Study files for Linuxacademy course and learning Terraform.

The course teaches you to work with Terraform and 
Ansible to generate "infrastructure as a Code" for Amazon Web Services.


Source: https://github.com/linuxacademy/terransible

## Getting Started
First of you need to install your tools. 
Then you type in your AWS Access Key and ID and 
download the provider plugins for Terraform. 
### AWS
```commandline
pip install --user --upgrade pip
pip install --user awscli
mkdir ~/bin
export PATH="~/bin:$PATH"
ln -s ~/.local/bin/aws* ~/bin
aws configure --profile prod
```
### Terraform
Download the latest release from https://releases.hashicorp.com/terraform/

```commandline
unzip terraform_0.11.3_linux_amd64.zip
mv terraform ~/bin
cd <GIT REPOSITORY>
terraform init
```


These tools work great with _oh-my-zsh_ Plugins for autocomplete

Then you create your terraform.tfvars with all specific values and secrets.
```commandline
cp terraform.tfvars-example terraform.tfvars
```

## Useful Lines
Find AMI for your region from Amazon with LTS support:
```commandline
aws ec2 describe-images --owners amazon --filters "Name=description,Values=*LTS*" | jq ".Images[] | {ImageID: .ImageId, Description: .Description}"
```
