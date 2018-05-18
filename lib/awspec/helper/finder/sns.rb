module Awspec::Helper
  module Finder
    module Sns
      def find_sns_topic(suffix)
        res = sns_client.list_topics
        return unless res
        res.topics.find do |topic|
          topic.topic_arn.end_with?(suffix)
        end
      end

      def find_sns_subscription_by_topic(topic_arn)
        res = sns_client.list_subscriptions
        found = []
        loop do
          found += res.subscriptions.find_all do |subscription|
            subscription.topic_arn == topic_arn
          end
          (res.next_page? && res = res.next_page) || break
        end
        found
      end
    end
  end
end
