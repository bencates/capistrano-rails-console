# Capistrano::Rails::Console

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-rails-console'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-rails-console

## Usage

`capistrano-rails-console` provides several new shortcuts

* `cap <stage> rails:console` (alias `rails:c`): Open an interactive
  rails console on one of your remote servers
* `cap <stage> rails:dbconsole` (alias `rails:db`): Open an interactive
  database console on one of your remote servers

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
