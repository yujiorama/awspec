module Awspec::Type
  class AccountAliases < ResourceBase
    def resource_via_client
      @resource_via_client ||= iam_client.list_account_aliases
    end

    def id
      @id ||= 'id'
    end
  end
end
