# Cssmin

Minify modern CSS with Ruby. Cssmin currently uses [CSSO](https://github.com/css/csso) via [ExecJS](https://github.com/rails/execjs).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cssmin'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cssmin

## Usage

```rb
require "cssmin"
minified_css_string = Cssmin.minify("/path/to/css/file")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/domchristie/cssmin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/domchristie/cssmin/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cssmin project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/domchristie/cssmin/blob/main/CODE_OF_CONDUCT.md).
