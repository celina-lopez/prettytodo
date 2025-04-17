# Prettytodo

I discovered bin/rails notes and took it from there. Let my todos do the talkin!

## Usage

How to use my plugin.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "prettytodo"
```

add to your routes.rb:

```ruby
mount Prettytodo::Engine => '/prettytodo' if Rails.env.development?
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
