### exist

```ruby
describe account_aliases do
  it { should exist }
  its(:account_aliases) { should include('my-account-aliases') }
end
```
