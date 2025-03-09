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

## Architecture Diagram

![image](https://github.com/user-attachments/assets/9bdad3d0-a528-4299-9f15-860ea1b76da3)


## Terraform Plan Output

The following shows the output of the ‘terraform plan‘ command, which checks the current state of
the infrastructure and compares it with the desired configuration. Since no changes were needed,
Terraform reports that the infrastructure matches the configuration, as shown below. This output confirms that all resources are already in the desired state.

<img width="452" alt="image" src="https://github.com/user-attachments/assets/617e562c-5fe8-4b7d-9048-381759f435fb" />

## Terraform Initialization

The ‘terraform init‘ command initializes the Terraform working directory by downloading necessary provider plugins. It also sets up the backend for state management. The output indicates that the environment has been successfully initialized.This step is crucial before running any other Terraform commands.

<img width="452" alt="image" src="https://github.com/user-attachments/assets/8270b374-7c60-44ed-9ec2-0014fea8fa30" />

## Terraform Apply Output

The ‘terraform apply‘ command is used to apply changes to the infrastructure. In this case, the output from Terraform shows that no changes were applied because the infrastructure is already in the desired state, confirming the current configuration is already correct. The output indicates that the infrastructure is already in the desired state, so no resources were modified.

<img width="452" alt="image" src="https://github.com/user-attachments/assets/b5d93cd8-d4b3-4f31-a550-531c57f703ac" />

## GitHub Actions Workflow Success

The **GitHub Actions workflow** was successfully triggered after code was pushed to the repository. The status shows that the workflow completed successfully, with the ‘openTofu‘ and ‘ansible‘jobs running as expected: This workflow ensures continuous integration and deployment by automatically applying Terraform and Ansible changes.

Terraform Configuration Variables
The configuration variables for connecting to Azure resources, such as client ID, secret, subscription ID, and tenant ID, are defined and used within the Terraform scripts to authenticate and manage resources in Azure. Here’s an example of the configuration used These variables ensure secure and automated access to Azure resources when provisioning infrastructure.

## OpenTofu Deployment Plan Output

The **OpenTofu deployment plan** shows the planned actions for provisioning a Linux virtual
machine, including configuring various properties like the admin username, password authentication, and disk type: This step ensures that all required actions are planned before applying the deployment to the Azure infrastructure.

<img width="452" alt="image" src="https://github.com/user-attachments/assets/e501bff4-e60f-49bf-8fff-a847d8aa3f2e" />

## Application Running on VM

After completing the infrastructure setup and deployment, the application was successfully deployed and accessible via the public IP address. The browser screen shown below confirms that the application is running and displaying ”Hello World!” at the provided public IP: This step demon strates that the containerized application is accessible over the internet.

<img width="452" alt="image" src="https://github.com/user-attachments/assets/be84c495-4162-4957-93f9-4cd281a034f7" />

## Output

<img width="452" alt="image" src="https://github.com/user-attachments/assets/a002e8da-21b0-4f8b-8501-5ee95c4ecc84" />

