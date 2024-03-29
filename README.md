
# Preparation

1. [nvm](https://github.com/nvm-sh/nvm)
2. [terraform](https://github.com/hashicorp/terraform)

## MacOS

```shell
# nvm, terraform
brew install nvm terraform tflint
```

## Ubuntu

```shell
# nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc

# terraform: https://askubuntu.com/a/1158357
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update
sudo apt install terraform

# tflint: https://github.com/terraform-linters/tflint
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
```

# Init project

```shell
nvm use
npm install
terraform -chdir=src init
tflint -chdir=src --init

terraform -chdir=src validate
tflint -chdir=src
```
