# ==============================================================================
# LIB - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true
class String

  # Compare characters length.
  def length?(length)
    unless [Integer, Range, Fixnum, Bignum].include?(length.class)
      raise ArgumentError.new("argument must be Integer (including Fixnum or Bignum) or Range")
    end

    return self.length == length unless length.instance_of?(Range)
    self.length.between?(length.first, length.last)
  end

  # Compare characters length is less than specified number.
  def length_lt?(length)
    String.allow_only_integer_argument(length)

    self.length < length
  end

  # Compare characters length is less than equal specified number.
  def length_lte?(length)
    String.allow_only_integer_argument(length)

    self.length <= length
  end

  # Compare characters length is greater than specified number.
  def length_gt?(length)
    String.allow_only_integer_argument(length)

    self.length > length
  end

  # Compare characters length is greater than equal specified number.
  def length_gte?(length)
    String.allow_only_integer_argument(length)

    self.length >= length
  end

  private

  def self.allow_only_integer_argument(argument)
    unless [Integer, Fixnum, Bignum].include?(argument.class)
      raise ArgumentError.new("argument must be Integer (including Fixnum or Bignum)")
    end
  end

end
