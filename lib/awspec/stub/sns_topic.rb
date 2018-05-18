Aws.config[:sns] = {
  stub_responses: {
    list_topics: {
      topics: [
        {
          topic_arn: 'arn:aws:sns:us-east-1:123456789012:my-sns-topic'
        }
      ]
    }
  }
}
