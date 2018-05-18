require 'spec_helper'
Awspec::Stub.load 'sns_topic'

describe sns_topic('my-sns-topic') do
  it { should exist }
end
