Aws.config[:iam] = {
  stub_responses: {
    list_account_aliases: {
      account_aliases: [
        'my-account-aliases'
      ]
    }
  }
}
