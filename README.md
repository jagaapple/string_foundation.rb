<!-- ======================================================================= -->
<!-- README                                                                  -->
<!-- ======================================================================= -->
# StringFoundation

[![CircleCI](https://circleci.com/gh/brushdown/string_foundation.svg?style=shield&circle-token=6a26eeb30ff51076ae87be13b45466922cd5f9fe)](https://circleci.com/gh/brushdown/string_foundation) [![codecov](https://codecov.io/gh/brushdown/string_foundation/branch/master/graph/badge.svg)](https://codecov.io/gh/brushdown/string_foundation)

StringFoundation is a Ruby library for providing useful methods to Ruby String class.


## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Contributing to StringFoundation](#contributing-to-stringfoundation)
- [License](#license)
- [Copyright](#copyright)


## Installation
StringFoundation is available as a gem, to install it just install the gem:

```bash
$ gem install string_foundation
```

If you are using Bundler, add this line to your application's Gemfile:

```ruby
gem 'string_foundation'
```

And then run `bundle install` .


## Usage
The following is a part of StringFoundation provides.

```ruby
# Check for convertable.
'123'.to_i?  #=> true
'x123'.to_i? #=> false

# Convert a value to appropriate type.
'false'.to_pretty #=> false
'.5'.to_pretty    #=> 0.5

# Convert to lowerCamelCase.
'user_id'.to_lcc #=> 'userId'
```


## Convertable Methods
You can check for any convertable, these methods return `true` or `false` .

```ruby
# To Integer type.
'123'.to_i? #=> true

# To Float type.
'0.51'.to_f? #=> true

# To TrueClass or FalseClass type.
'true'.to_bool? #=> true
```


## Contributing to StringFoundation
Bug reports and pull requests are welcome on GitHub at
[https://github.com/brushdown/string_foundation](https://github.com/brushdown/string_foundation).
This project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


## Copyright
Copyright 2017 Jaga Apple, and Brushdown.
