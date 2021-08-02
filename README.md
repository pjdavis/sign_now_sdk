# SignNowSdk

Ruby SDK for the SignNow API.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sign_now_sdk'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install sign_now_sdk

## Usage

### Instancing the client: 

```ruby
sign_now_client = SignNowSdk::Client.new(username: sign_now_username,
                                         password: sign_now_password,
                                         basic_auth_token: basic_auth_token)
```

### Working with documents

#### Uploading a new document:

Uploads a new document to sign now. Supports .doc, .docx, .pdf, .xls, .xlsx, .ppt, .pptx and .png filetypes. 
Uploading documents with tags is not supported through the SDK at this point in time. 

```ruby
file = File.open('/path/to/file.pdf') # (supports .doc, .docx, .pdf, .xls, .xlsx, .ppt, .pptx and .png)
document = sign_now_client.documents.create(file: file) # returns a SignNowSdk::Document
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sign_now_sdk.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
