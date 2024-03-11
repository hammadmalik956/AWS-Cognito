cognito_vars = {
  # cognito_a = {
  #   user_pool_name             = "pool"
  #   alias_attributes           = ["email", "phone_number", "preferred_username"]
  #   auto_verified_attributes   = ["email"]
  #   sms_authentication_message = "Your username is {username} and temporary password is {####}."
  #   sms_verification_message   = "This is the verification message {####}."
  #   deletion_protection        = "ACTIVE"
  #   mfa_configuration          = "OPTIONAL"

  #   software_token_mfa_configuration = {
  #     enabled = true
  #   }

  #   admin_create_user_config = {
  #     email_message = "Dear {username}, your verification code is {####}."
  #     email_subject = "Here, your verification code baby"
  #     sms_message   = "Your username is {username} and temporary password is {####}."
  #   }

  #   device_configuration = {
  #     challenge_required_on_new_device      = true
  #     device_only_remembered_on_user_prompt = true
  #   }

  #   # email_configuration = {
  #   #   email_sending_account  = "DEVELOPER"
  #   #   reply_to_email_address = "email@mydomain.com"
  #   #   source_arn             = ""
  #   # }

  #   # lambda_config = {
  #   #   create_auth_challenge          = "arn"
  #   #   custom_message                 = "arn"
  #   #   define_auth_challenge          = "arn"
  #   #   post_authentication            = "arn"
  #   #   post_confirmation              = "arn"
  #   #   pre_authentication             = "arn"
  #   #   pre_sign_up                    = "arn"
  #   #   pre_token_generation           = "arn"
  #   #   user_migration                 = "arn"
  #   #   verify_auth_challenge_response = "arn"
  #   #   custom_email_sender = {
  #   #     lambda_arn     = "arn"
  #   #     lambda_version = "V1_0"
  #   #   }
  #   #   custom_sms_sender = {
  #   #     lambda_arn     = "arn"
  #   #     lambda_version = "V1_0"
  #   #   }
  #   # }

  #   password_policy = {
  #     minimum_length                   = 10
  #     require_lowercase                = false
  #     require_numbers                  = true
  #     require_symbols                  = true
  #     require_uppercase                = true
  #     temporary_password_validity_days = 120

  #   }

  #   user_pool_add_ons = {
  #     advanced_security_mode = "ENFORCED"
  #   }

  #   verification_message_template = {
  #     default_email_option = "CONFIRM_WITH_CODE"
  #   }
  #   schemas = [
  #     {
  #       attribute_data_type      = "Boolean"
  #       developer_only_attribute = false
  #       mutable                  = true
  #       name                     = "available"
  #       required                 = false
  #     },
  #     {
  #       attribute_data_type      = "Boolean"
  #       developer_only_attribute = true
  #       mutable                  = true
  #       name                     = "registered"
  #       required                 = false
  #     }
  #   ]
  #   string_schemas = [
  #     {
  #       attribute_data_type      = "String"
  #       developer_only_attribute = false
  #       mutable                  = false
  #       name                     = "email"
  #       required                 = true

  #       string_attribute_constraints = {
  #         min_length = 7
  #         max_length = 15
  #       }
  #     },
  #     {
  #       attribute_data_type      = "String"
  #       developer_only_attribute = false
  #       mutable                  = false
  #       name                     = "gender"
  #       required                 = true

  #       string_attribute_constraints = {
  #         min_length = 7
  #         max_length = 15
  #       }
  #     },
  #   ]

  #   number_schemas = [
  #     {
  #       attribute_data_type      = "Number"
  #       developer_only_attribute = true
  #       mutable                  = true
  #       name                     = "mynumber1"
  #       required                 = false

  #       number_attribute_constraints = {
  #         min_value = 2
  #         max_value = 6
  #       }
  #     },
  #     {
  #       attribute_data_type      = "Number"
  #       developer_only_attribute = true
  #       mutable                  = true
  #       name                     = "mynumber2"
  #       required                 = false

  #       number_attribute_constraints = {
  #         min_value = 2
  #         max_value = 6
  #       }
  #     },
  #   ]

  #   # user_pool_domain
  #   domain = "mydomain-com"

  #   # clients
  #   clients = [
  #     {
  #       allowed_oauth_flows                  = []
  #       allowed_oauth_flows_user_pool_client = false
  #       allowed_oauth_scopes                 = []
  #       callback_urls                        = ["https://mydomain.com/callback"]
  #       default_redirect_uri                 = "https://mydomain.com/callback"
  #       explicit_auth_flows                  = []
  #       generate_secret                      = true
  #       logout_urls                          = []
  #       name                                 = "test1"
  #       read_attributes                      = ["email"]
  #       supported_identity_providers         = []
  #       write_attributes                     = []
  #       access_token_validity                = 1
  #       id_token_validity                    = 1
  #       refresh_token_validity               = 60
  #       token_validity_units = {
  #         access_token  = "hours"
  #         id_token      = "hours"
  #         refresh_token = "days"
  #       }
  #     }

  #   ]
  #   # user_group
  #   user_groups = [
  #     { name        = "mygroup1"
  #       description = "My group 1"
  #     },
  #     { name        = "mygroup2"
  #       description = "My group 2"
  #     },
  #   ]
  #   # resource_servers
  #   resource_servers = [
  #     {
  #       identifier = "https://mydomain.com"
  #       name       = "mydomain"
  #       scope = [
  #         {
  #           scope_name        = "sample-scope-1"
  #           scope_description = "A sample Scope Description for mydomain.com"
  #         },
  #         {
  #           scope_name        = "sample-scope-2"
  #           scope_description = "Another sample Scope Description for mydomain.com"
  #         },
  #       ]
  #     },
  #     {
  #       identifier = "https://weather-read-app.com"
  #       name       = "weather-read"
  #       scope = [
  #         {
  #           scope_name        = "weather.read"
  #           scope_description = "Read weather forecasts"
  #         }
  #       ]
  #     }
  #   ]
  #   # identity_providers
  #   identity_providers = [
  #     {
  #       provider_name = "Google"
  #       provider_type = "Google"

  #       provider_details = {
  #         authorize_scopes              = "email"
  #         client_id                     = "your client_id"
  #         client_secret                 = "your client_secret"
  #         attributes_url_add_attributes = "true"
  #         authorize_url                 = "https://accounts.google.com/o/oauth2/v2/auth"
  #         oidc_issuer                   = "https://accounts.google.com"
  #         token_request_method          = "POST"
  #         token_url                     = "https://www.googleapis.com/oauth2/v4/token"
  #       }

  #       attribute_mapping = {
  #         email    = "email"
  #         username = "sub"
  #         gender   = "gender"
  #       }
  #     }
  #   ]

  #   # tags
  #   tags = {
  #     Owner       = "infra"
  #     Environment = "dev"
  #     Terraform   = true
  #   }
  # },
  # cognito_b = {
  #   user_pool_name                                     = "simple_extended_pool"
  #   alias_attributes                                   = ["email", "phone_number"]
  #   auto_verified_attributes                           = ["email"]
  #   sms_authentication_message                         = "Your username is {username} and temporary password is {####}."
  #   sms_verification_message                           = "This is the verification message {####}."
  #   lambda_config_verify_auth_challenge_response       = "arn:aws:lambda:us-east-1:123456789012:function:my_lambda_function"
  #   password_policy_require_lowercase                  = false
  #   password_policy_minimum_length                     = 11
  #   user_pool_add_ons_advanced_security_mode           = "OFF"
  #   verification_message_template_default_email_option = "CONFIRM_WITH_CODE"

  #   # schemas
  #   schemas = [
  #     {
  #       attribute_data_type      = "Boolean"
  #       developer_only_attribute = false
  #       mutable                  = true
  #       name                     = "available"
  #       required                 = false
  #     },
  #   ]

  #   string_schemas = [
  #     {
  #       attribute_data_type      = "String"
  #       developer_only_attribute = false
  #       mutable                  = false
  #       name                     = "email"
  #       required                 = true

  #       string_attribute_constraints = {
  #         min_length = 7
  #         max_length = 15
  #       }
  #     },
  #   ]

  #   # user_pool_domain
  #   domain = "mydomain-com"

  #   # client
  #   client_name                                 = "client0"
  #   client_allowed_oauth_flows_user_pool_client = false
  #   client_callback_urls                        = ["https://mydomain.com/callback"]
  #   client_default_redirect_uri                 = "https://mydomain.com/callback"
  #   client_read_attributes                      = ["email"]
  #   client_refresh_token_validity               = 30


  #   # user_group
  #   user_group_name        = "mygroup"
  #   user_group_description = "My group"

  #   # ressource server
  #   resource_server_identifier        = "https://mydomain.com"
  #   resource_server_name              = "mydomain"
  #   resource_server_scope_name        = "scope"
  #   resource_server_scope_description = "a Sample Scope Description for mydomain"

  #   # tags
  #   tags = {
  #     Owner       = "infra"
  #     Environment = "production"
  #     Terraform   = true
  #   }
  # },
  cognito_c = {
    user_pool_name = "user"

    password_policy = {
      minimum_length                   = 8
      require_lowercase                = true
      require_numbers                  = true
      require_symbols                  = true
      require_uppercase                = true
      temporary_password_validity_days = 7
    }
    auto_verified_attributes   = ["email"]
    mfa_configuration          = "OPTIONAL"
    sms_authentication_message = "Your username is {username} and temporary password is {####}."
    sms_verification_message   = "This is the verification message {####}."
    software_token_mfa_configuration = {
      enabled = true
    }

    email_configuration = {

      email_sending_account = "DEVELOPER"
      from_email_address    = "hammadhameed956@gmail.com"
      source_arn            = "arn:aws:ses:us-east-1:489994096722:identity/hammadhameed956@gmail.com"

    }
    admin_create_user_config = {
      allow_admin_create_user_only = false
    }
    clients = [

      {

        allowed_oauth_flows                  = ["code"]
        allowed_oauth_flows_user_pool_client = true
        allowed_oauth_scopes                 =  ["aws.cognito.signin.user.admin"]
        callback_urls                        = ["https://localhost"]
        default_redirect_uri                 = "https://localhost"
        explicit_auth_flows                  = ["ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH"]
        client_prevent_user_existence_errors = true
        logout_urls                          = []
        name                                 = "mobile_app"
        read_attributes                      = ["email"]
        supported_identity_providers         = ["COGNITO"]
        write_attributes                     = []
        access_token_validity                = 60
        id_token_validity                    = 60
        refresh_token_validity               = 30
        token_validity_units = {
          access_token  = "minutes"
          id_token      = "minutes"
          refresh_token = "days"
        }
      }
    ]

    domain = "hightqfitness"
    tags = {
      Owner       = "infra"
      Environment = "dev"
      Terraform   = true
    }

  }

}






  