# ==============================================================================
# LIB - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true
class String

  # Check whether characters length is a specific number.
  def length?(length)
    unless [Integer, Range, Fixnum, Bignum].include?(length.class)
      raise ArgumentError.new("argument must be Integer (including Fixnum or Bignum) or Range")
    end

    return (self.length == length) unless length.instance_of?(Range)
    self.length.between?(length.first, length.last)
  end

  # Check whether characters length is less than a specific number.
  def length_lt?(length)
    self.instance_eval { allow_only_integer(length) }

    (self.length < length)
  end

  # Check whether characters length is less than or equal to a specific number.
  def length_lte?(length)
    self.instance_eval { allow_only_integer(length) }

    (self.length <= length)
  end

  # Check whether characters length is greater than a specific number.
  def length_gt?(length)
    self.instance_eval { allow_only_integer(length) }

    (self.length > length)
  end

  # Check whether characters length is greater than or equal to a specific number.
  def length_gte?(length)
    self.instance_eval { allow_only_integer(length) }

    (self.length >= length)
  end


  # ----------------------------------------------------------------------------
  # Private
  # ----------------------------------------------------------------------------
  private
  # Allow only Integer.
  def allow_only_integer(argument)
    return if [Integer, Fixnum, Bignum].include?(argument.class)
    raise ArgumentError.new("argument must be Integer (including Fixnum or Bignum)")
  end

end
