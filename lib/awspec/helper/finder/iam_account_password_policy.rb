module Awspec::Helper
  module Finder
    module IamAccountPasswordPolicy
      def find_iam_account_password_policy
        resp = iam_client.get_account_password_policy
        resp.password_policy
      end
    end
  end
end
