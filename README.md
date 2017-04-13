<!-- ======================================================================= -->
<!-- README                                                                  -->
<!-- ======================================================================= -->
# StringFoundation

[![CircleCI](https://circleci.com/gh/brushdown/string_foundation.svg?style=shield&circle-token=6a26eeb30ff51076ae87be13b45466922cd5f9fe)](https://circleci.com/gh/brushdown/string_foundation) [![codecov](https://codecov.io/gh/brushdown/string_foundation/branch/master/graph/badge.svg)](https://codecov.io/gh/brushdown/string_foundation)

StringFoundation is a Ruby library for providing useful methods to Ruby String
class.


## Table of Contents
- [Installation](#installation)
- [Basic Usage](#basic-usage)
- [Convertable Methods](#convertable-methods)
- [With Methods](#with-methods)
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


## Basic Usage
The following is a part of StringFoundation provides.

```ruby
# Check for convertable.
'123'.to_i?  #=> true
'x123'.to_i? #=> false

# Remove leading zeros.
'00000123'.without_leading_zeros #=> '123'

# Convert a value to appropriate type.
'false'.to_pretty #=> false
'.5'.to_pretty    #=> 0.5

# Convert to lowerCamelCase.
'user_id'.to_lcc #=> 'userId'
```


## Convertable Methods
COnvertable methods provide to check whether or not to be possible to convert
a string object to other class objects. These methods return `true` or `false` .

### To Integer
`to_i?` method is to check convertable for Integer class (including Fixnum
and Bignum classes).
This returns `true` only when an argument is convertable for Integer class, so
an argument is not needed to be an integral number. If you set a floating point number
as an argument that should be passed to this method, this returns `true` because of
be converted Integer object using `to_i` Ruby built-in method (For example,
`'0.4'.to_i` returns `0` ).

```ruby
'123'.to_i? #=> true
'0.3'.to_i? #=> true
'.2'.to_i?  #=> true

'abc'.to_i? #=> false
'2x'.to_i?  #=> false
```

Also when an argument with leading-zeros, they will be removed before checking.

```ruby
'00000123'.to_i? #=> true
```

### To Float
`to_f?` method is to check convertable for Float class.
This returns `true` only when an argument is convertable for Float class, so
an argument is not needed to be a floating point number. If you set an integral number
as an argument that should be passed to this method, this returns `true` because of
be converted Float object using `to_f` Ruby built-in method (For example, `'2'.to_f`
returns `2.0` ).

```ruby
'0.3'.to_f? #=> true
'2'.to_f?   #=> true
'.2'.to_f?  #=> true

'abc'.to_f?  #=> false
'2.0x'.to_f? #=> false
```


### To TrueClass / FalseClass
`to_bool?` method is to check convertable for TrueClass or FalseClass.
This returns `true` only when the string is `'true'` or `'false'` .

```ruby
'true'.to_bool?  #=> true
'false'.to_bool? #=> true

'abc'.to_bool?   #=> false
'123'.to_bool?   #=> false
```


## With Methods
With methods provide to append or remove specific characters from a string object.

### Remove Leading Zeros (Zero Padding)
`without_leading_zeros` method removes leading zeros (it is called "zero padding").

```ruby
'00001'.without_leading_zeros #=> '1'

%w(00001 00003 00008).map { |num| num.without_leading_zeros } #=> ['1', '3', '8']
```

Also you can use `without_leading_zeros!` method which removes leading zeros and
the receiver will be changed (bang method).

```ruby
num = '00001'
num.without_leading_zeros! #=> '1'
num                        #=> '1'
```

`without_zero_pad` and `without_zero_pad!` are alias methods.


## Contributing to StringFoundation
Bug reports and pull requests are welcome on GitHub at
[https://github.com/brushdown/string_foundation](https://github.com/brushdown/string_foundation).
This project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org)
code of conduct.


## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


## Copyright
Copyright 2017 Jaga Apple, and Brushdown.
