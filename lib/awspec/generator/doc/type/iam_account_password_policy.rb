module Awspec::Generator
  module Doc
    module Type
      class IamAccountPasswordPolicy < Base
        def initialize
          super
          @type_name = 'IamAccountPasswordPolicy'
          @type = Awspec::Type::IamAccountPasswordPolicy.new('my-iam-account-password-policy')
          @ret = @type.resource_via_client
          @matchers = []
          @ignore_matchers = []
          @describes = []
        end
      end
    end
  end
end
