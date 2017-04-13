# ==============================================================================
# LIB - STRING FOUNDATION - WITH
# ==============================================================================
class String
  # Remove leading zeros.
  def without_leading_zeros
    return self if self == '0'

    if self.start_with?('0')
      sig = self[0, self.length].gsub(/^0+/, '')
      (sig.start_with?('.') || sig.length == 0) ? '0' + sig : sig
    else
      self
    end
  end

  # Remove leading zeros and change a receiver value.
  def without_leading_zeros!
    self.replace(self.without_leading_zeros)
  end

  alias_method :without_zero_pad, :without_leading_zeros
  alias_method :without_zero_pad!, :without_leading_zeros!
end
