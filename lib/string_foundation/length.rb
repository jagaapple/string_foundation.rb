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

end
