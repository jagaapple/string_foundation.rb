# ==============================================================================
# LIB - STRING FOUNDATION - BLANK
# frozen_string_literal: true
# ==============================================================================
class String

  # Check whether a string is empty or only half-width spaces.
  def blank?
    self.empty? || /\A[[:space:]]*\z/.match(self).instance_of?(MatchData)
  end

  # Check whether a string is not empty or only half-width spaces.
  def present?
    !(self.blank?)
  end

end
