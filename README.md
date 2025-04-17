# 🌸 Pretty Todo 🌸

A Rails engine that transforms your code annotations into an organized, visual interface. Built on top of `bin/rails notes`, Pretty Todo makes managing your code todos a delightful experience :)

## Features

- Visual interface for your code annotations
- Supports standard tags: `TODO`, `OPTIMIZE`, `FIXME`
- Customizable tag support
- Development-only mounting for security

## Installation

1. Add to your application's Gemfile:

```ruby
gem "prettytodo"
```

2. Mount the engine in your `config/routes.rb`:

```ruby
mount Prettytodo::Engine => '/prettytodo' if Rails.env.development?
```

## Configuration

Add custom annotation tags in `config/application.rb`:

```ruby
config.annotations.register_tags('HACK', 'REVIEW')
```

## Usage

1. Add annotations to your code using standard Rails comment format:

```ruby
# TODO: Refactor this method
# FIXME: Handle edge case
# OPTIMIZE: Improve performance
```

2. Visit `/prettytodo` in your development environment to see your annotations in a beautiful interface.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
