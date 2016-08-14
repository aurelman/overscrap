# Overscrap

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/overscrap`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'overscrap'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install overscrap

## Usage

```ruby
# retrieves a user by his/her full gamertag
u = Overscrap.user 'Bobby#1530'

# general statistics
u.overview.games_won   # 622
u.overview.progression # 50
u.competitive_rank     # 50


# statistics for competitive games
u.competitive.eliminations_average      # 6.22
u.competitive.damage_done_average       # 3666
u.competitive.deaths_average            # 5.12
u.competitive.healing_done_average      # 404
u.competitive.final_blows_average       # 2.12
u.competitive.objective_kills_average   # 4.02
u.competitive.solo_kills_average        # 1.22
u.competitive.objective_time_average    # 45  (in seconds)


# same statistics for quick play games
u.quick_play.eliminations_average
u.quick_play.damage_done_average
u.quick_play.deaths_average
u.quick_play.healing_done_average
u.quick_play.final_blows_average
u.quick_play.objective_kills_average
u.quick_play.solo_kills_average
u.quick_play.objective_time_average
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aurelman/overscrap. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [LGPL-3.0](http://opensource.org/licenses/LGPL-3.0).

