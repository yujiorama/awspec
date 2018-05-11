# {
#     "PasswordPolicy": {
#         "MinimumPasswordLength": 6,
#         "RequireSymbols": true,
#         "RequireNumbers": true,
#         "RequireUppercaseCharacters": true,
#         "RequireLowercaseCharacters": true,
#         "AllowUsersToChangePassword": true,
#         "ExpirePasswords": true,
#         "MaxPasswordAge": 180,
#         "PasswordReusePrevention": 5,
#         "HardExpiry": false
#     }
# }
Aws.config[:iam] = {
  stub_responses: {
    get_account_password_policy: {
      password_policy: {
        minimum_password_length: 12,
        require_symbols: true,
        require_numbers: true,
        require_uppercase_characters: true,
        require_lowercase_characters: true,
        allow_users_to_change_password: true,
        expire_passwords: true,
        max_password_age: 180,
        password_reuse_prevention: 5,
        hard_expiry: false
      }
    }
  }
}
