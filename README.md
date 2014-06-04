# Httparty::Timmed

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'httparty-timmed'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install httparty-timmed

## Usage

This is very simple to use, just require the gem:
"require 'httparty/timed"

and whenever you make a request with http you'll have the #duration method:
   res = HTTParty.get 'http://google.com'
   puts res.duration


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
