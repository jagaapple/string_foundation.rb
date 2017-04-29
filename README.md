<!-- ======================================================================= -->
<!-- README                                                                  -->
<!-- ======================================================================= -->
<img src="string_foundation.png" alt="String Foundation" width="600">

---

[![CircleCI](https://img.shields.io/circleci/project/github/brushdown/string_foundation/master.svg)](https://circleci.com/gh/brushdown/string_foundation)
[![codecov](https://img.shields.io/codecov/c/github/brushdown/string_foundation/master.svg)](https://codecov.io/gh/brushdown/string_foundation)
[![Gem](https://img.shields.io/gem/v/string_foundation.svg)](https://rubygems.org/gems/string_foundation/)
[![license](https://img.shields.io/github/license/brushdown/string_foundation.svg)](https://opensource.org/licenses/MIT)
[![@jagaapple](https://img.shields.io/badge/contact-%40jagaapple-blue.svg)](https://twitter.com/jagaapple)

String Foundation is a Ruby library for providing useful methods to Ruby String
class.


## Table of Contents

<!-- MarkdownTOC autolink="true" bracket="round" -->

- [Quick Start](#quick-start)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Basic Usage](#basic-usage)
- [The Convertable Methods](#the-convertable-methods)
  - [To Integer](#to-integer)
  - [To Float](#to-float)
  - [To TrueClass / FalseClass](#to-trueclass--falseclass)
- [The With Methods](#the-with-methods)
  - [Remove Leading Zeros \(Zero Padding\)](#remove-leading-zeros-zero-padding)
- [The Convert Methods](#the-convert-methods)
  - [To TrueClass / FalseClass](#to-trueclass--falseclass-1)
  - [To Proper Class](#to-proper-class)
  - [Newlines To Characters](#newlines-to-characters)
- [The Like Methods](#the-like-methods)
  - [Like Integer](#like-integer)
  - [Like Float](#like-float)
- [Contributing to String Foundation](#contributing-to-string-foundation)
- [License](#license)

<!-- /MarkdownTOC -->


## Quick Start
### Requirements
- Ruby version 2.1.0 or higher
- A project that uses source control, such as Git

### Installation
String Foundation is available as a gem, to install it just install the gem:

```bash
$ gem install string_foundation
```

If you are using Bundler, add this line to your application's Gemfile:

```ruby
gem 'string_foundation'
```

And then run `bundle install` .

### Basic Usage
The following is a part of String Foundation provides.

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
'user_id'.to_lcamel #=> 'userId'
```


## The Convertable Methods
The convertable methods provide to check whether or not to be possible to convert
a string object to other class objects. These method return `true` or `false` .

### To Integer
`to_i?` method is to check convertable to an Integer object (including Fixnum
and Bignum classes).
This returns `true` only when an argument is convertable to an Integer object, so
an argument is not needed to be an integral number. If you set a floating point number
as an argument that should be passed to this method, this returns `true` because of
be converted an Integer object using `to_i` Ruby built-in method (For example,
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
`to_f?` method is to check convertable to Float class.
This returns `true` only when an argument is convertable to Float class, so
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
`to_bool?` method is to check convertable to TrueClass or FalseClass.
This returns `true` or `false` only when the string is `'true'` or `'false'` .

```ruby
'true'.to_bool?  #=> true
'false'.to_bool? #=> true

'abc'.to_bool?   #=> false
'123'.to_bool?   #=> false
```

Also String Foundation provides to check convertable to "Booly" (truthy or falsy).
This returns `true` only when the string is a positive number or `'true'` ,
an empty string, otherwise returns `false` .

```ruby
'true'.to_booly? #=> true
'123'.to_booly?  #=> true
''.to_booly?     #=> true
'-3'.to_booly?   #=> true

'abc'.to_booly?  #=> false
```


## The With Methods
The with methods provide to append or remove specific characters from a string object.

### Remove Leading Zeros (Zero Padding)
`without_leading_zeros` method removes leading zeros (it is called "zero padding").
This supports a floating point number and a string starting with a plus or minus sign.

```ruby
'00001'.without_leading_zeros   #=> '1'
'-0000.3'.without_leading_zeros #=> '-0.3'

%w(00001 00003 00008).map { |num| num.without_leading_zeros } #=> ['1', '3', '8']
```


## The Convert Methods
The convert methods provide to convert to a specific class object. The Ruby built-in
methods are included converting from a string to an Integer object or an Float
object, but not included converting to a TrueClass / FalseClass object and a proper
class object. The Convert Methods can them.

### To TrueClass / FalseClass
`to_bool` method is to convert from a "true" or "false" string to `true` or `false`,
otherwise this raise TypeError.

```ruby
'true'.to_bool  #=> true
'false'.to_bool #=> false

'1'.to_bool   #=> TypeError
'0'.to_bool   #=> TypeError
'-1'.to_bool  #=> TypeError
'abc'.to_bool #=> TypeError
''.to_bool    #=> TypeError
```

If you want to convert a booly string, you can use `to_booly` method. When a string
is a string "true" or positive number, this method return `true` , otherwise `false` .

```ruby
'true'.to_booly  #=> true
'false'.to_booly #=> false

'1'.to_booly   #=> true
'0'.to_booly   #=> false
'-1'.to_booly  #=> false
'abc'.to_booly #=> TypeError
''.to_booly    #=> false
```

### To Proper Class
`to_pretty` method is so powerful. This method can convert to a proper class, for
example, returns TrueClass `true` when a string is "true", or returns Integer `1`
when a string is "1".
Also this returns nil when a string is an empty string.

```ruby
'1'.to_pretty      #=> 1
'-3'.to_pretty     #=> -3
'0004'.to_pretty   #=> 4
'0.1'.to_pretty    #=> 0.1
'-.5'.to_pretty    #=> -0.5
'00.01'.to_pretty  #=> 0.01

'true'.to_pretty  #=> true
'false'.to_pretty #=> false

''.to_pretty #=> nil
```

### Newlines To Characters
`nl_to` method is to convert from a string has newlines to specific characters.
`nl2` method is alias for `nl_to` .

```ruby
"Hi!\nWe are Brushdown.".nl_to(' / ') #=> 'Hi! / We are Brushdown.'
"Hi!\nWe are Brushdown.".nl2(' / ')   #=> 'Hi! / We are Brushdown.'
```

`nl_to_br` method is to convert from a string has newlines to a HTML tag `<br>`
for break line. `nl2br` method is alias for `nl_to_br` .

```ruby
"Hi!\nWe are Brushdown.".nl_to_br #=> 'Hi!<br>We are Brushdown.'
"Hi!\nWe are Brushdown.".nl2br    #=> 'Hi!<br>We are Brushdown.'
```


## The Like Methods
The like methods provide to check whether a string is an integral number or a
floating point number. These method ignore leading zeros, so the string `000123`
is regarded as an integral number. These method return `true` or `false` .

### Like Integer
`like_i?` method is to check whether a string is an integral number.

```ruby
'123'.like_i? #=> true
'00123'.like_i? #=> true
'0.3'.like_i? #=> false
'.2'.like_i?  #=> false

'abc'.like_i? #=> false
'2x'.like_i?  #=> false
```

### Like Float
`like_f?` method is to check whether a string is a floating point number.

```ruby
'123'.like_f? #=> false
'00123'.like_f? #=> false
'0.3'.like_f? #=> true
'.2'.like_f?  #=> true

'abc'.like_f? #=> false
'2x'.like_f?  #=> false
```


## Contributing to String Foundation
Bug reports and pull requests are welcome on GitHub at
[https://github.com/brushdown/string_foundation](https://github.com/brushdown/string_foundation).
This project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org)
code of conduct.

We adhere GitHub Flow to develop this project. Anything in the `master` branch
is deployable. To work on something new, create a descriptively named branch
off of master, also add a prefix `feature/` to its name.
For more details, see [GitHub Flow – Scott Chacon](http://scottchacon.com/2011/08/31/github-flow.html).


## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

Copyright 2017 Jaga Apple and Brushdown. All rights reserved.
