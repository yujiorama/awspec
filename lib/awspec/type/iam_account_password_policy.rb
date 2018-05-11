module Awspec::Type
  class IamAccountPasswordPolicy < ResourceBase
    def resource_via_client
      @resource_via_client ||= find_iam_account_password_policy
    end

    def id
      @id ||= @display_name
    end

    BOOLEANS = %w(
      require_symbols
      require_numbers
      require_uppercase_characters
      require_lowercase_characters
      allow_users_to_change_password
      expire_passwords
      hard_expiry
    )
    BOOLEANS.each do |item|
      define_method item + '?' do
        resource_via_client[item.to_sym]
      end
    end
  end
end
