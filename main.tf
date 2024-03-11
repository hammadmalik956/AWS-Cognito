
module "cognito" {

  source                     = "lgallard/cognito-user-pool/aws"
  for_each                   = var.cognito_vars
  user_pool_name             = try(each.value.user_pool_name, "")
  alias_attributes           = try(each.value.alias_attributes, null)
  auto_verified_attributes   = try(each.value.auto_verified_attributes, [])
  sms_authentication_message = try(each.value.sms_authentication_message, null)
  sms_verification_message   = try(each.value.sms_verification_message, null)

  deletion_protection = try(each.value.deletion_protection, "INACTIVE")

  mfa_configuration                = try(each.value.mfa_configuration, "OFF")
  software_token_mfa_configuration = try(each.value.software_token_mfa_configuration, {})

  admin_create_user_config = try(each.value.admin_create_user_config, {})

  device_configuration = try(each.value.device_configuration, {})

  email_configuration = try(each.value.email_configuration, {})

  lambda_config = {
    create_auth_challenge          = try(each.value.lambda_config.create_auth_challenge, null)
    custom_message                 = try(each.value.lambda_config.custom_message, null)
    define_auth_challenge          = try(each.value.lambda_config.define_auth_challenge, null)
    post_authentication            = try(each.value.lambda_config.post_authentication, null)
    post_confirmation              = try(each.value.lambda_config.post_confirmation, null)
    pre_authentication             = try(each.value.lambda_config.pre_authentication, null)
    pre_sign_up                    = try(each.value.lambda_config.pre_sign_up, null)
    pre_token_generation           = try(each.value.lambda_config.pre_token_generation, null)
    user_migration                 = try(each.value.lambda_config.user_migration, null)
    verify_auth_challenge_response = try(each.value.lambda_config.verify_auth_challenge_response, null)
    custom_email_sender            = try(each.value.lambda_config.custom_email_sender, {})
    custom_sms_sender              = try(each.value.lambda_config.custom_sms_sender, {})
  }

  password_policy = try(each.value.password_policy, null)

  user_pool_add_ons = try(each.value.user_pool_add_ons, {})

  verification_message_template = try(each.value.verification_message_template, {})

  schemas = try(each.value.schemas, [])

  string_schemas = try(each.value.string_schemas, [])

  number_schemas = try(each.value.number_schemas, [])

  domain = try(each.value.domain, null)

  clients = try(each.value.clients, [])

  user_groups = try(each.value.user_groups, [])

  resource_servers = try(each.value.resource_servers, [])

  identity_providers = try(each.value.identity_providers, [])

  tags = try(each.value.tags, {})
}


