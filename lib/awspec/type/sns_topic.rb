module Awspec::Type
  class SnsTopic < ResourceBase
    def resource_via_client
      @resource_via_client ||= find_sns_topic(@display_name)
    end

    def id
      @id ||= resource_via_client.topic_arn if resource_via_client
    end
  end
end
