# ==============================================================================
# LIB - STRING FOUNDATION - CONVERTIBLE
# ==============================================================================
# frozen_string_literal: true
require_relative "with"
class String

  # Whether or not to be possible to covert String to Integer.
  def to_i?
    Integer(Float(self.without_leading_zeros))
    true
  rescue ArgumentError
    false
  end

  # Whether or not to be possible to covert String to Float.
  def to_f?
    Float(self.without_leading_zeros)
    true
  rescue ArgumentError
    false
  end

  # Whether or not to be possible to covert String to Boolean.
  def to_bool?
    return true if %w(true false).include?(self)
    false
  end

  # Whether or not to be possible to covert String to something which behaves
  # like boolean types.
  def to_booly?
    return true if self.length == 0
    return true if %w(true false).include?(self)
    return true if self.to_f?

    false
  end

end
