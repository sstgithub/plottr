# Plottr

Plottr will generate a scatter plot as a string based on the coordinates you pass in. Print string to see the scatter plot in all its glory.

`Plottr.plot(<array of [x,y] type coordinate arrays>)` (generates new array of arrays (graph) with given points)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'plottr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plottr

## Usage

Pass in an array of [x,y] coordinates (see `plottr_test.rb` file for examples) to Scatter class and use `gen_string_scatter_plot` method to generate a string which will print out as a scatter plot with your coordinate points on it.

### Example usage
`plottr_scatter = Plottr::Scatter.new(<array of coordinate arrays>)`

`string_scatter_plot = plottr_scatter.gen_string_scatter_plot`

`print string_scatter_plot`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Sid Tantia/plottr. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## TODO:
- [ ] allow users to add points (with higher x or y values than max from last points) to a graph thats already been created (`plottr = Plottr.new`, `plottr.plot([0,0], [1,0])`, `plottr.plot([5,0], [9,8])`)
- [ ] add statistics on graph
- [ ] allow average line through graph (will have to completely change it!)
