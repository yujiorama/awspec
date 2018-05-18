module Awspec::Type
  class SnsTopic < ResourceBase
    def resource_via_client
      @resource_via_client ||= find_sns_topic(@display_name)
    end

    def id
      @id ||= resource_via_client.topic_arn if resource_via_client
    end

    def has_subscription?(*endpoint)
      subscriptions = find_sns_subscription_by_topic(id)
      return false if subscriptions.empty?
      endpoint.all? do |item|
        subscriptions.any? do |subscription|
          subscription.endpoint == item
        end
      end
    end
  end
end
