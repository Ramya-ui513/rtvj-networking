# RTVJ Networking Project

This project automates the process of provisioning cloud infrastructure, configuring servers, and deploying applications using **Terraform**, **Ansible**, and **GitHub Actions**. The system provisions a **Virtual Machine (VM)** on **Azure**, installs **Docker**, and deploys a web application in a **Docker container**. This entire process follows **Infrastructure as Code (IaC)** principles for consistency and seamless updates to the application whenever changes are made to the codebase.

## Project Overview

This project automates the following:

- **Infrastructure Provisioning**: Using **Terraform** to provision cloud resources like a VM, Network Security Group (NSG), Static IP, and SSH keys.
- **Server Configuration**: Using **Ansible** to configure the provisioned VM, install Docker, and deploy the web application inside a Docker container.
- **CI/CD Pipeline**: Using **GitHub Actions** to automate provisioning and deployment when code changes are pushed to the repository.

## Features

- **Automated Cloud Infrastructure** using Terraform on Azure.
- **Docker Container Deployment** via Ansible.
- **CI/CD Pipeline** with GitHub Actions for seamless deployment.
- **Infrastructure as Code (IaC)** for repeatable and consistent infrastructure provisioning.

## Prerequisites

Before you begin, ensure you have the following:

1. **Terraform**: Install it from [here](https://www.terraform.io/downloads.html).
2. **Ansible**: Install it from [here](https://docs.ansible.com/ansible/latest/installation_guide/index.html).
3. **GitHub Account**: For repository management and GitHub Actions configuration.
4. **Azure Subscription**: To provision resources on Azure.

##**Terraform Plan Output**

The following shows the output of the ‘terraform plan‘ command, which checks the current state of
the infrastructure and compares it with the desired configuration. Since no changes were needed,
Terraform reports that the infrastructure matches the configuration, as shown below:
<img width="452" alt="image" src="https://github.com/user-attachments/assets/617e562c-5fe8-4b7d-9048-381759f435fb" />


### Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/Ramya-ui513/rtvj-networking.git
cd rtvj-networking
