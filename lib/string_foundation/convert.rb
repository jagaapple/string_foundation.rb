# ==============================================================================
# LIB - STRING FOUNDATION - CONVERT
# ==============================================================================
# frozen_string_literal: true
require_relative 'convertable'
require_relative 'like'
require_relative 'with'
class String

  # Convert to TrueClass or FalseClass.
  def to_bool
    unless self.to_bool?
      raise TypeError.new("#{self} cannot be converted to TrueClass or FalseClass")
    end

    (self == 'true')
  end

  # Convert a booly string to TrueClass or FalseClass.
  def to_booly
    unless self.to_booly?
      raise TypeError.new("#{self} cannot be converted to TrueClass or FalseClass")
    end

    return true if self == 'true'  || (self.to_f? && self.to_f > 0)
    false
  end

  # Convert to a pretty value.
  def to_pretty
    return self.without_leading_zeros.to_i if self.like_i?
    return self.without_leading_zeros.to_f if self.like_f?
    return self.to_bool                    if self.to_bool?

    (self.length > 0) ? self : nil
  end

end
