<!-- ======================================================================= -->
<!-- README                                                                  -->
<!-- ======================================================================= -->
<img src="string_foundation.png" alt="String Foundation" width="600">

---

[![CircleCI](https://img.shields.io/circleci/project/github/brushdown/string_foundation.rb/master.svg)](https://circleci.com/gh/brushdown/string_foundation.rb)
[![codecov](https://img.shields.io/codecov/c/github/brushdown/string_foundation.rb/master.svg)](https://codecov.io/gh/brushdown/string_foundation.rb)
[![Gem](https://img.shields.io/gem/v/string_foundation.svg)](https://rubygems.org/gems/string_foundation/)
[![license](https://img.shields.io/github/license/brushdown/string_foundation.rb.svg)](https://opensource.org/licenses/MIT)
[![@jagaapple](https://img.shields.io/badge/contact-%40jagaapple-blue.svg)](https://twitter.com/jagaapple)

String Foundation is a Ruby library that provides useful methods for the Ruby
string class.


## Table of Contents

<!-- MarkdownTOC autolink="true" bracket="round" -->

- [Quick Start](#quick-start)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Basic Usage](#basic-usage)
- [The Convertible Methods](#the-convertible-methods)
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
- [The Case Methods](#the-case-methods)
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
gem "string_foundation"
```

And then run `bundle install` .

### Basic Usage
The following is a sample of what String Foundation provides.

```ruby
# Check for convertible.
"123".to_i?  #=> true
"x123".to_i? #=> false

# Remove leading zeros.
"00000123".without_leading_zeros #=> "123"

# Convert a value to the appropriate type.
"false".to_pretty #=> false
".5".to_pretty    #=> 0.5

# Convert to lowerCamelCase.
"user_id".to_lcamel #=> "userId"
```


## The Length Methods
The Length methods enable you to check whether or not characters length is a
specific length. These methods return `true` or `false` .

### Equal To
The `length?` method checks whether characters length is equal to a specific
length. If its case, return `true` , unless return `false` .
This method accepts number of Integer (including Fixnum and Bignum classes).

```ruby
"abc".length?(3) #=> true
"abc".length?(4) #=> false

"abc".length?("3") #=> ArgumentError
```

Also this method accepts Range. In that case, characters length is within a range,
return `true` , unless return `false` .

```ruby
"abc".length?(2..5)  #=> true
"abc".length?(8..32) #=> false
```

### Less Than
The `length_lt?` method checks whether characters length is less than a specific
length. If its case, return `true` , unless return `false` .
This method accepts only number of Integer (including Fixnum and Bignum classes).

```ruby
"abc".length_lt?(2) #=> false
"abc".length_lt?(3) #=> false
"abc".length_lt?(4) #=> true
```

### Less Than Or Equal To
The `length_lte?` method checks whether characters length is less than or equal
to a specific length. If its case, return `true` , unless return `false` .
This method accepts only number of Integer (including Fixnum and Bignum classes).

```ruby
"abc".length_lte?(2) #=> false
"abc".length_lte?(3) #=> true
"abc".length_lte?(4) #=> true
```

### Greater Than
The `length_gt?` method checks whether characters length is greater than a specific
length. If its case, return `true` , unless return `false` .
This method accepts only number of Integer (including Fixnum and Bignum classes).

```ruby
"abc".length_gt?(2) #=> true
"abc".length_gt?(3) #=> false
"abc".length_gt?(4) #=> false
```

### Greater Than Or Equal To
The `length_gte?` method checks whether characters length is greater than or equal
to a specific length. If its case, return `true` , unless return `false` .
This method accepts only number of Integer (including Fixnum and Bignum classes).

```ruby
"abc".length_gte?(2) #=> true
"abc".length_gte?(3) #=> true
"abc".length_gte?(4) #=> false
```


## The Convertible Methods
The Convertible Methods enable you to check whether or not a string can be
converted to another class object. These methods return `true` or `false` .

### To Integer
The `to_i?` method checks whether a string can be converted to an Integer
(including Fixnum and Bignum classes). This returns `true` only if an argument
is convertible, therefore it is not required for the argument to be an integral
number. If you pass a floating point number as an argument to this method, it will
return `true` because it can be converted using the `to_i` Ruby built-in method
(for example, `"0.4".to_i` returns `0` ).

```ruby
"123".to_i? #=> true
"0.3".to_i? #=> true
".2".to_i?  #=> true

"abc".to_i? #=> false
"2x".to_i?  #=> false
```

If an argument has leading zeros, they will be removed before checking.

```ruby
"00000123".to_i? #=> true
```

### To Float
The `to_f?` method is to check convertibility to the Float class. This returns
`true` only when an argument is convertible, therefore it is not required for the
argument to be a floating point number. If you pass an integral number as an
argument to this method, it will return `true` because it can be converted using
the `to_f` Ruby built-in method (for example, `"2".to_f` returns `2.0` ).

```ruby
"0.3".to_f? #=> true
"2".to_f?   #=> true
".2".to_f?  #=> true

"abc".to_f?  #=> false
"2.0x".to_f? #=> false
```


### To TrueClass / FalseClass
The `to_bool?` method checks whether a string is convertible to TrueClass or
FalseClass. This returns `true` or `false` only when the string is `"true"` or
`"false"` .

```ruby
"true".to_bool?  #=> true
"false".to_bool? #=> true

"abc".to_bool?   #=> false
"123".to_bool?   #=> false
```

String Foundation also provides a check for a string's convertibility to a "Booly"
(truthy or falsy). This returns `true` only when the string is a positive number,
`"true"` , or an empty string. If not, it returns `false` .

```ruby
"true".to_booly? #=> true
"123".to_booly?  #=> true
"".to_booly?     #=> true
"-3".to_booly?   #=> true

"abc".to_booly?  #=> false
```


## The With Methods
The With Methods provide you with ways to append or remove specific characters
from a String object.

### Remove Leading Zeros (Zero Padding)
The `without_leading_zeros` method removes leading zeros (called "zero padding").
This supports a floating point number and a string starting with a plus or minus sign.

```ruby
"00001".without_leading_zeros   #=> "1"
"-0000.3".without_leading_zeros #=> "-0.3"

%w(00001 00003 00008).map { |num| num.without_leading_zeros } #=> ["1", "3", "8"]
```


## The Convert Methods
The Convert Methods enable you to convert to a specific class object. While Ruby
built-in methods include conversion from a String object to an Integer object or
a Float object, they do not include conversion to a TrueClass / FalseClass object
or a proper class object. The Convert Methods make it easy to convert to these
excluded classes.

### To TrueClass / FalseClass
The `to_bool` method is for converting from a `"true"` or `"false"` string to `true`
or `false` , otherwise it will raise a `TypeError` .

```ruby
"true".to_bool  #=> true
"false".to_bool #=> false

"1".to_bool   #=> TypeError
"0".to_bool   #=> TypeError
"-1".to_bool  #=> TypeError
"abc".to_bool #=> TypeError
"".to_bool    #=> TypeError
```

If you want to convert a Booly string, you can use the `to_booly` method. When a
string is `"true"` or a positive number, this method will return `true` . Otherwise
it will return `false` .

```ruby
"true".to_booly  #=> true
"false".to_booly #=> false

"1".to_booly   #=> true
"0".to_booly   #=> false
"-1".to_booly  #=> false
"abc".to_booly #=> TypeError
"".to_booly    #=> false
```

### To Proper Class
The `to_pretty` method is powerful. This method can convert to a proper class,
for example, it will return a TrueClass `true` when a string is `"true"`, or returns
an Integer `1` when a string is `"1"`.
Also this returns `nil` when a string is an empty string.

```ruby
"1".to_pretty      #=> 1
"-3".to_pretty     #=> -3
"0004".to_pretty   #=> 4
"0.1".to_pretty    #=> 0.1
"-.5".to_pretty    #=> -0.5
"00.01".to_pretty  #=> 0.01

"true".to_pretty  #=> true
"false".to_pretty #=> false

"".to_pretty #=> nil
```

### Newlines To Characters
The `nl_to` method converts a string with newlines to its specific characters.
The `nl2` method is an alias for `nl_to` .

```ruby
"Hi!\nWe are Brushdown.".nl_to(" / ") #=> "Hi! / We are Brushdown."
"Hi!\nWe are Brushdown.".nl2(" / ")   #=> "Hi! / We are Brushdown."
```

The `nl_to_br` method replaces the newlines in a string with HTML tag `<br>` for
break line.
The `nl2br` method is an alias for `nl_to_br` .

```ruby
"Hi!\nWe are Brushdown.".nl_to_br #=> "Hi!<br>We are Brushdown."
"Hi!\nWe are Brushdown.".nl2br    #=> "Hi!<br>We are Brushdown."
```


## The Like Methods
The Like Methods provide to check whether a string is an integral number or a
floating point number. These method ignore leading zeros, so the string `"000123"`
is regarded as an integral number. These method return `true` or `false` .

The Like Methods check whether a string is an integral number or a floating point
number. These methods ignore leading zeros, so the string `000123` is regarded
as an integral number. These methods return `true` or `false` .

### Like Integer
The `like_i?` method checks whether a string is an integral number.

```ruby
"123".like_i? #=> true
"00123".like_i? #=> true
"0.3".like_i? #=> false
".2".like_i?  #=> false

"abc".like_i? #=> false
"2x".like_i?  #=> false
```

### Like Float
The `like_f?` method checks whether a string is a floating point number.

```ruby
"123".like_f? #=> false
"00123".like_f? #=> false
"0.3".like_f? #=> true
".2".like_f?  #=> true

"abc".like_f? #=> false
"2x".like_f?  #=> false
```


## The Case Methods
The Case Methods convert to a case style, such as `lowerCamelCase` and
`lower_snake_case` . The following methods are available.

| METHOD NAME | CASE STYLE                    | EXAMPLE            |
|:------------|:------------------------------|:-------------------|
| `to_lcamel` | Lower Camel Case              | `weAreBrushdown`   |
| `to_ucamel` | Upper Camel Case              | `WeAreBrushdown`   |
| `to_lsnake` | Lower Snake Case              | `we_are_brushdown` |
| `to_usnake` | Upper Snake Case ()           | `We_Are_Brushdown` |
| `to_lkebab` | Lower Kebab Case (Chain Case) | `we-are-brushdown` |
| `to_ukebab` | Upper Kebab Case (Train Case) | `We-Are-Brushdown` |
| `to_lspace` | Lower Space Case (Lower Case) | `we are brushdown` |
| `to_uspace` | Upper Space Case (Start Case) | `We Are Brushdown` |
| `to_ldot`   | Lower Dot Case                | `we.are.brushdown` |
| `to_udot`   | Upper Dot Case                | `We.Are.Brushdown` |

```ruby
"user_id".to_lcamel   #=> "userId"
"createdAt".to_lsnake #=> "created_at"
```


## Contributing to String Foundation
Bug reports and pull requests are welcome on GitHub at
[https://github.com/brushdown/string_foundation.rb](https://github.com/brushdown/string_foundation.rb).
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
