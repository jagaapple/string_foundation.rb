# ==============================================================================
# LIB - STRING FOUNDATION - BLANK
# frozen_string_literal: true
# ==============================================================================
class String

  # Check whether a string is an empty or only half-width spaces.
  def blank?
    self.empty? || /\A[[:space:]]*\z/.match(self).instance_of?(MatchData)
  end

  # Check whether a string is not an empty or only half-width spaces.
  def present?
    !(self.blank?)
  end

end
