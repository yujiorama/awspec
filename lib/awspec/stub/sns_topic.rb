Aws.config[:sns] = {
  stub_responses: {
    list_topics: {
      topics: [
        {
          topic_arn: 'arn:aws:sns:us-east-1:123456789012:my-sns-topic'
        },
        {
          topic_arn: 'arn:aws:sns:us-east-1:123456789012:my-sns-topic2'
        }
      ]
    },
    list_subscriptions: {
      subscriptions: [
        {
          subscription_arn: 'arn:aws:sns:us-east-1:123456789012:my-sns-topic2:18a4c576-9d7a-4b77-83ba-56005b272944',
          owner: '123456789012',
          protocol: 'email',
          endpoint: 'my-sns-subscription1@example.com',
          topic_arn: 'arn:aws:sns:us-east-1:123456789012:my-sns-topic2'
        },
        {
          subscription_arn: 'arn:aws:sns:us-east-1:123456789012:my-sns-topic2:7b5e7ce8-23e2-4ec6-9de8-e211806138f4',
          owner: '123456789012',
          protocol: 'email',
          endpoint: 'my-sns-subscription2@example.com',
          topic_arn: 'arn:aws:sns:us-east-1:123456789012:my-sns-topic2'
        }
      ]
    }
  }
}
