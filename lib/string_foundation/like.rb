# ==============================================================================
# LIB - STRING FOUNDATION - LIKE
# ==============================================================================
# frozen_string_literal: true
require_relative 'convertable'
class String

  # Check whether a string is an integral number.
  def like_i?
    return false unless self.to_i?

    num = self.without_leading_zeros
    (num.to_i == num.to_i) && !num.include?('.')
  end

  # Check whether a string is a floating point number.
  def like_f?
    return false unless self.to_f?

    num = self.without_leading_zeros
    (num.to_i != num.to_f) || num.include?('.')
  end

end
