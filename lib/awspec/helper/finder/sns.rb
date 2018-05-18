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
    end
  end
end
