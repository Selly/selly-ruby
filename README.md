# Selly Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'selly'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install selly

## Usage

Visit the [API documentation](https://selly.gg/developer/docs) for complete method lists

```ruby
require 'selly'

# Set API credentials
Selly.api_key = 'your api key'
Selly.api_email = 'your account email'

# List orders
Selly::Orders.list

# Pagination
Selly::Orders.list(page: 10)

# Get single resource
Selly::Orders.show('order id')
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

