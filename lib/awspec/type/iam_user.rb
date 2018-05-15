module Awspec::Type
  class IamUser < ResourceBase
    aws_resource Aws::IAM::User

    def resource_via_client
      @resource_via_client ||= find_iam_user(@display_name)
    end

    def id
      @id ||= resource_via_client.user_name if resource_via_client
    end

    def has_iam_policy?(policy_id)
      policies = select_iam_policy_by_user_name(resource_via_client.user_name)
      policies.find do |policy|
        policy.policy_arn == policy_id || policy.policy_name == policy_id
      end
    end

    def has_inline_policy?(policy_name, document = nil)
      res = iam_client.get_user_policy({
                                         user_name: resource_via_client.user_name,
                                         policy_name: policy_name
                                       })
      return JSON.parse(CGI.unescape(res.policy_document)) == JSON.parse(document) if document
      res
    end

    def has_mfa_device?
      res = iam_client.list_mfa_devices(user_name: @id)
      res.is_truncated || !res.mfa_devices.empty?
    end
  end
end
