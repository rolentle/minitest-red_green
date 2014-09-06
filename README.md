# Minitest::RedGreen

Adds red/green colors to standard minitest output

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-red_green'
```

Or your gem's gemspec:

```ruby
spec.add_development_dependency 'minitest'
spec.add_development_dependency 'minitest-red_green'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-red_green

## Usage

Once you add this gem to your `Gemfile`, minitest should start printing out red and green colors. If you wish to disable this for some reason,

```ruby
Minitest::RedGreenPlugin.disabled = true
```

Although, it's probably much simpler to simply remove this gem from your `Gemfile` in the first place :)

## Why not minitest-reporters

There is another gem, [minitest-reporters](https://github.com/kern/minitest-reporters/), that also adds red/green progress output. However, often this is overkill for gems or small applications.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/minitest-red_green/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
