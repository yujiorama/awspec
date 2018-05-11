module Awspec::Generator
  module Doc
    module Type
      class AccountAliases < Base
        def initialize
          super
          @type_name = 'AccountAliases'
          @type = Awspec::Type::AccountAliases.new('my-account-aliases')
          @ret = @type.resource_via_client
          @matchers = []
          @ignore_matchers = []
          @describes = []
        end
      end
    end
  end
end
