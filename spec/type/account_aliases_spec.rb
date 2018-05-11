require 'spec_helper'
Awspec::Stub.load 'account_aliases'

describe account_aliases do
  it { should exist }
  its(:account_aliases) { should include('my-account-aliases') }
end
