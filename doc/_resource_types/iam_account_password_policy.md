### be_require_symbols

```ruby
describe iam_account_password_policy('my-policy') do
  it { should be_require_symbols }
end
```

### be_require_numbers

```ruby
describe iam_account_password_policy('my-policy') do
  it { should be_require_numbers }
end
```

### be_require_uppercase_characters

```ruby
describe iam_account_password_policy('my-policy') do
  it { should be_require_uppercase_characters }
end
```

### be_require_lowercase_characters

```ruby
describe iam_account_password_policy('my-policy') do
  it { should be_require_lowercase_characters }
end
```

### be_allow_users_to_change_password

```ruby
describe iam_account_password_policy('my-policy') do
  it { should be_allow_users_to_change_password }
end
```

### be_expire_passwords

```ruby
describe iam_account_password_policy('my-policy') do
  it { should be_expire_passwords }
end
```

### be_hard_expiry

```ruby
describe iam_account_password_policy('my-policy') do
  it { should_not be_hard_expiry }
end
```
