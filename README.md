# Terraform AWS Cognito User Pool Module

## Description

This Terraform module enables easy management of multiple AWS Cognito user pools with customizable configurations. It provides flexibility in defining authentication methods, password policies, lambda triggers, and other settings to meet your application's requirements.

## Features

### Flexible Configuration

Define multiple Cognito user pools with customizable attributes, authentication methods, password policies, lambda triggers, and more.

### Scalable

Easily scale your authentication solution by creating and managing multiple user pools for different applications or user groups.

### Reusable

Leverage Terraform's modular approach to infrastructure as code, enabling reuse of Cognito configurations across projects and environments.

### Secure

Implement robust authentication and authorization mechanisms using Cognito's built-in features such as multi-factor authentication (MFA), password policies, and identity providers.

### Tagging Support

Easily tag resources for organization, cost tracking, and management purposes.

## Usage

```hcl
module "cognito" {
  source = "lgallard/cognito-user-pool/aws"
  for_each = var.cognito_vars

  # Define configuration parameters here
  user_pool_name             = each.value.user_pool_name
  alias_attributes           = each.value.alias_attributes
  auto_verified_attributes   = each.value.auto_verified_attributes
  sms_authentication_message = each.value.sms_authentication_message
  # Add more parameters as needed
  ...
}
