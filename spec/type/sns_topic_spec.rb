require 'spec_helper'
Awspec::Stub.load 'sns_topic'

describe sns_topic('my-sns-topic') do
  it { should exist }
end

describe sns_topic('my-sns-topic2') do
  it { should exist }
  it do
    should have_subscription(
      'my-sns-subscription1@example.com',
      'my-sns-subscription2@example.com'
    )
  end
end
