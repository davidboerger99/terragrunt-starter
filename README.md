# Multi-Cloud Terraform Starter Module for AWS

This Terraform starter module provides a flexible and scalable infrastructure configuration for deployment on AWS across different accounts. It's designed to simplify the implementation of multi-cloud environments and enable consistent deployment across various AWS contexts.

## Features

- **Multi-Account Support:** Configure and deploy infrastructures in different AWS accounts.
- **Modular Structure:** Allows easy customization and extension of the Terraform configuration.
- **Centralized Management:** Centralized resource management across different regions and accounts.

## Usage

The starter module offers clear guidance for usage:

1. **Deployment:** Use Terragrunt to deploy your infrastructure.

Find more detailed information and step-by-step guides in our wiki or documentation.

## Prerequisites

- Installed versions of Terraform and Terragrunt.
- AWS access rights and valid credentials for the accounts you intend to deploy to.

## Deployment

To use this Terraform starter module, follow these steps:

1. **Initialize Backends**
   ```bash
   terragrunt run-all init

2. **Run Plan**
```bash
   terragrunt run-all plan

3. **Run Apply**
```bash
   terragrunt run-all apply


## Contribution and Support

We welcome contributions, suggestions, and bug reports. Please refer to our [Contribution Guidelines](CONTRIBUTING.md) for details.

For support or questions, please open an [issue](../../issues) or contact us directly.

