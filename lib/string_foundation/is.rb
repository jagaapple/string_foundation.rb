# ==============================================================================
# LIB - STRING FOUNDATION - IS
# ==============================================================================
# frozen_string_literal: true
class String

  def is_sym?(symbol)
    raise ArgumentError.new("argument must be Symbol") unless symbol.instance_of?(Symbol)

    (self == symbol.to_s)
  end

end
