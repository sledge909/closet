# Closet
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'closet'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install closet
```

## Generator

To set up the bootstrap common files run:

```
$ rails generator closet:layout
```

For the generated layout to work properly the following gems must be added to
the app `Gemfile`:

```
gem 'breadcrumbs_on_rails'
gem 'js-routes'
gem 'font-awesome-rails'
gem 'page_title_helper', github: 'lwe/page_title_helper'
gem 'email_spec'
gem 'jquery-rails'
gem 'haml-rails'
gem 'sass-rails'
```

And run:

```
$ yarn add moment
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
