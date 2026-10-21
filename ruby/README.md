# Random Identity Generator API - Ruby Gem

Random Identity Generator creates synthetic user profiles with realistic names, usernames, email addresses, phone numbers, and gender attributes. Paid plans add batch generation, birthdates, company details, and AI-generated avatars.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_randomidentitygenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_randomidentitygenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_randomidentitygenerator'

# Initialize the client
client = APIVerve::Randomidentitygenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  count: 1,
  includeAvatar: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ count: 1, includeAvatar: true })
  puts response["data"]
rescue APIVerve::Randomidentitygenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Randomidentitygenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Randomidentitygenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "identities": [
      {
        "name": "Dr. Brent Carter",
        "username": "Fannie_Treutel28",
        "email": "Greyson.DAmore99@hotmail.com",
        "phone": "862-207-2982 x6455",
        "website": "mervin.net",
        "company": {
          "name": "Runolfsson, Gaylord and Christiansen",
          "catchPhrase": "Profit-focused didactic algorithm",
          "bs": "brand ubiquitous paradigms"
        },
        "gender": "Male",
        "birthdate": "1978-11-23",
        "cell": "1-514-413-1724",
        "avatar": "https://storage.googleapis.com/apiverve/APIResources/faces/Male/40-50/87654321.jpg?X-Goog-Signature=..."
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomidentitygenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomidentitygenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomidentitygenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
