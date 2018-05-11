require 'spec_helper'
Awspec::Stub.load 'iam_account_password_policy'

describe iam_account_password_policy('my-iam-account-password-policy') do
  its(:minimum_password_length) { should be > 10 }
  it { should be_require_symbols }
  it { should be_require_numbers }
  it { should be_require_uppercase_characters }
  it { should be_require_lowercase_characters }
  it { should be_allow_users_to_change_password }
  it { should be_expire_passwords }
  its(:max_password_age) { should eq 180 }
  its(:password_reuse_prevention) { should eq 5 }
  it { should_not be_hard_expiry }
end
