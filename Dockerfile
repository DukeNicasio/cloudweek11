FROM jenkins/jenkins:lts

USER root

# ติดตั้ง git, wget, unzip, terraform
RUN apt-get update && apt-get install -y git wget unzip \
  && wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip \
  && unzip terraform_1.6.6_linux_amd64.zip \
  && mv terraform /usr/local/bin/ \
  && terraform -v \
  && git --version

USER jenkins
