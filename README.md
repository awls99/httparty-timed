# Httparty::Timmed

This gem monkey patches NET::HTTP::Response adding a #duration atribute which in turn is exposed on the HTTParty's response object. 

## Usage

This is very simple to use, just require the gem:
"require 'httparty/timed"

and whenever you make a request with http you'll have the #duration method:
```
   require 'httparty-timmed'

   res = HTTParty.get 'http://google.com'
   puts res.duration
```


## Installation

Add this line to your application's Gemfile:

    gem 'httparty-timmed'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install httparty-timmed


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
