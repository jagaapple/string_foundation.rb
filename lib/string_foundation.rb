# ==============================================================================
# LIB - STRING FOUNDATION - STRING FOUNDATION
# ==============================================================================
require "string_foundation/version"

class String

  # Evaluate to be possible to convert to Integer type from String.
  def to_i?
    Integer(self.sig_fig)
    true
  rescue ArgumentError
    false
  end

  # Evaluate to be possible to convert to Float type from String.
  def to_f?
    return true if Float(self.sig_fig) && self.include?('.')
    false
  rescue ArgumentError
    false
  end

  # Evaluate to be possible to convert to Boolean type from String.
  def to_bool?
    return true if ['true', 'false'].include?(self)
    false
  end

  # Get significant figures (exclude zero prefix).
  def sig_fig
    return self if self == '0'

    if self.start_with?('0')
      sig = self[0, self.length].gsub(/^0+/, '')
      (sig.start_with?('.')) ? '0' + sig : sig
    else
      self
    end
  end

  # Convert to proper class when it's possible to.
  def to_pretty
    return Integer(self.sig_fig) if self.to_i?
    return Float(self.sig_fig) if self.to_f?

    if self.to_bool? && self =~ /^(true|false)$/
      return true  if $1 == 'true'
      return false if $1 == 'false'
    end

    (self.length > 0) ? self : nil
  end

end
