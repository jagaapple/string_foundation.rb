# ==============================================================================
# LIB - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true
class String

  # Compare characters length
  def length?(length)
    unless [Integer, Range, Fixnum, Bignum].include?(length.class)
      raise ArgumentError.new("argument must be Integer (it called Fixnum or Bignum in Ruby 2.3 or lower) or Range")
    end

    return self.length == length unless length.class == Range
    self.length.between?(length.first, length.last)
  end

end
