# ==============================================================================
# LIB - STRING FOUNDATION - CONVERTABLE
# ==============================================================================
require_relative 'with'
class String

  # Whether or not to be possible to covert String to Integer.
  def to_i?
    Integer(self.without_zero_prefix)
    true
  rescue ArgumentError
    false
  end

  # Whether or not to be possible to covert String to Float.
  def to_f?
    Float(self.without_zero_prefix)
    true
  rescue ArgumentError
    false
  end

  # Whether or not to be possible to covert String to Boolean.
  def to_bool?
    return true if ['true', 'false'].include?(self)
    false
  end

end
