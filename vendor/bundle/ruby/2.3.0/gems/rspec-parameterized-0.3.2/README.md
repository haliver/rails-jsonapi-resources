# RSpec::Parameterized [![Gem Version](https://badge.fury.io/rb/rspec-parameterized.svg)](https://badge.fury.io/rb/rspec-parameterized) [![Build Status](https://travis-ci.org/tomykaira/rspec-parameterized.svg)](https://travis-ci.org/tomykaira/rspec-parameterized)

Support simple parameterized test syntax in rspec.

```ruby
# Nested Array Style
describe "plus" do
  where(:a, :b, :answer) do
    [
      [1 , 2 , 3],
      [5 , 8 , 13],
      [0 , 0 , 0]
    ]
  end

  with_them do
    it "should do additions" do
      expect(a + b).to eq answer
    end
  end

  with_them do
    # Can browse parameters via `params` method in with_them block
    # Can browse all parameters via `all_params` method in with_them block
    it "#{params[:a]} + #{params[:b]} == #{params[:answer]}" do
      expect(a + b).to eq answer
    end
  end
end

# Hash and Array Style
# Given parameters is each value combinations
# On this case
# [
#   [1, 5, 2],
#   [1, 5, 4],
#   [1, 7, 2],
#   [1, 7, 4],
#   [1, 9, 2],
#   [1, 9, 4],
#   [3, 5, 2],
#   [3, 5, 4],
#   [3, 7, 2],
#   [3, 7, 4],
#   [3, 9, 2],
#   [3, 9, 4]
# ]
describe "Hash arguments" do
  where(a: [1, 3], b: [5, 7, 9], c: [2, 4])

  with_them do
    it "sums is even" do
      expect(a + b + c).to be_even
    end
  end
end

# Table Syntax Style (like Groovy spock)
# Need ruby-2.1 or later
describe "plus" do
  using RSpec::Parameterized::TableSyntax

  where(:a, :b, :answer) do
    1 | 2 | 3
    5 | 8 | 13
    0 | 0 | 0
  end

  with_them do
    it "should do additions" do
      expect(a + b).to eq answer
    end
  end
end
```

I was inspired by [udzura's mock](https://gist.github.com/1881139).

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-parameterized'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-parameterized

## Usage

Require `rspec-parameterized` from your `spec_helper.rb`.

    require 'rspec-parameterized'

Follow the sample spec above.

Arguments given to `with_them` is directly passed to `describe`.  You can specify `:pending`, `:focus`, etc. here.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request