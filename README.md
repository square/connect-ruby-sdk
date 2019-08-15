![Square logo]

# Square Connect Ruby SDK - RETIRED

---

[![Build Status](https://travis-ci.org/square/connect-ruby-sdk.svg?branch=master)](https://travis-ci.org/square/connect-ruby-sdk)
[![Gem Version](https://badge.fury.io/rb/square_connect.svg)](https://badge.fury.io/rb/square_connect)
[![Apache-2 license](https://img.shields.io/badge/license-Apache2-brightgreen.svg)](https://www.apache.org/licenses/LICENSE-2.0)
==================

## NOTICE: Square Connect Ruby SDK retired

The Square Connect Ruby SDK is retired (EOL) as of 2019-08-15 and will no longer
receive bug fixes or product updates. To continue receiving API and SDK
improvements, please follow the instructions below to migrate to the new
[Square Ruby SDK gem].


The old Connect SDK documentation is available under the
[`/docs` folder](./docs/README.md).

<br/>

---

* [Migrate to the Square Ruby SDK](#migrate-to-the-square-ruby-sdk)
  * [Update your bundle](#update-your-bundle)
  * [Update your code](#update-your-code)
* [Example code migration](#example-code-migration)
* [Ask the Community](#ask-the-community)

---

<br/>

## Migrate to the Square Ruby SDK

Follow the instructions below to migrate your apps from the deprecated
`square_connect` gem to the new `square.rb` gem.

### Update your bundle

1. Find the line in your `Gemfile` starting with `gem: 'square_connect'` and
   change the entire line to `gem: 'square.rb'`.
1. Run `bundle` to update your `Gemfile.lock`.

### Update your code

1. Change all instances of `require 'square_connect'` to `require 'square'`.
1. Replace models with plain Ruby Hash equivalents.
1. Update client instantiation to follow the method outlined below.
1. Update code for accessing response data to follow the method outlined below.
1. Check `response.success?` or `response.error?` rather than rescuing
   exceptions for flow control.

To simplify your code, we also recommend that you use method chaining to access
APIs instead of explicitly instantiating multiple clients.

#### Client instantiation

```ruby
require 'square'

square = Square::Client.new(access_token: 'YOUR ACCESS TOKEN')

response = square.API.ENDPOINT(body: BODY)
```

#### Accessing response data

```ruby
if response.success?
  p response.data
else
  warn response.errors
end
```

<br/>

---

<br/>

## Example code migration

As a specific example, consider the following code for creating a new customer
from the following Hash:

```ruby
new_customer = {
 given_name: 'Ava',
 address: {
   address_line_1: '555 Electric Ave',
   locality: 'Los Angeles',
   country: 'US'
 }
}
```

With the deprecated `square_connect` gem, this is how you instantiate a client
for the Customers API, format the request, and call the endpoint:

```ruby
require 'square_connect'

# Instantiate the client
SquareConnect.configure do |config|
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SquareConnect::CustomersApi.new

# Create the models
address = SquareConnect::Address.new(new_customer[:address])

body = SquareConnect::CreateCustomerRequest.new(
  given_name: new_customer[:given_name],
  address: address
)

begin
  # Call the endpoint
  response = api_instance.create_customer(body)

  # Handle the response and warn on errors
  p response.customer.to_hash
rescue SquareConnect::ApiError
  warn response.errors
end
```

Now consider equivalent code using the new `square.rb` gem:

```ruby
require 'square'

# Instantiate the client
square = Square::Client.new(access_token: 'YOUR ACCESS TOKEN')

# Call the endpoint
response = square.customers.create_customer(body: new_customer)

# Handle the response and warn on errors
if response.success?
  p response.data
else
  warn response.errors
end
```

That's it!

What was once a multi-block process can be handled in 2 lines of code and an
`if/else` block. Migrating to the `square.rb` gem reduces boilerplate and lets
you focus on the parts of your code that really matter.

<br/>

---

<br/>

## Ask the community

Please join us in our [Square developer community] if you have any questions!


[//]: # "Link anchor definitions"
[Square Logo]: https://docs.connect.squareup.com/images/github/github-square-logo.svg
[Square Ruby SDK gem]: https://github.com/square/square-ruby-sdk
[Square developer community]: https://squ.re/slack
