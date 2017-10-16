# ==============================================================================
# LIB - STRING FOUNDATION - LENGTH
# ==============================================================================
# frozen_string_literal: true

class String
  def length?(length)
    unless length.class == Integer || length.class == Range
      raise ArgumentError.new("argument must be an Integer or a Range")
    end

    return self.length == length if length.class == Integer

    self.length.between?(length.first, length.last) if length.class == Range
  end
end
