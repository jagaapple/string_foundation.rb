# ==============================================================================
# LIB - STRING FOUNDATION - WITH
# frozen_string_literal: true
# ==============================================================================
class String

  # Remove leading zeros.
  def without_leading_zeros
    return self if self == "0"

    is_positive = self.start_with?("0")
    is_negative = self.start_with?("-0")
    if is_positive || is_negative
      sig = self[0, self.length].gsub(/(^0+)|(^-0+)/, "")

      sig = "0" + sig if sig.start_with?(".") || sig.length == 0
      sig = "-" + sig if is_negative && sig != "0"

      sig
    else
      self
    end
  end

  alias_method :without_zero_pad, :without_leading_zeros
end
