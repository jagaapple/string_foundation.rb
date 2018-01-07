# ==============================================================================
# LIB - STRING FOUNDATION - CASE
# frozen_string_literal: true
# ==============================================================================
class String

  # Convert to lowerCamelCase.
  def to_lcamel
    ucamel = self.to_ucamel
    ucamel.instance_eval { make_head_lower }
  end

  # Convert to UpperCamelCase.
  def to_ucamel
    split_camel.map do |cw|
      cw.split(/\.|_|-|\s/).map do |w|
        w.capitalize
      end.join
    end.join
  end

  # Convert to lower_snake_case.
  def to_lsnake
    usnake = self.to_usnake
    usnake.downcase
  end

  # Convert to Upper_Snake_Case.
  def to_usnake
    split_camel.map do |cw|
      cw.split(/\.|_|-|\s/).map do |w|
        w.capitalize
      end.join("_")
    end.join("_")
  end

  # Convert to lower-kebab-case.
  def to_lkebab
    ukebab = self.to_ukebab
    ukebab.downcase
  end

  # Convert to Upper-Kebab-Case.
  def to_ukebab
    split_camel.map do |cw|
      cw.split(/\.|_|-|\s/).map do |w|
        w.capitalize
      end.join("-")
    end.join("-")
  end

  # Convert to lower space case.
  def to_lspace
    uspace = self.to_uspace
    uspace.downcase
  end

  # Convert to Upper Space Case.
  def to_uspace
    split_camel.map do |cw|
      cw.split(/\.|_|-|\s/).map do |w|
        w.capitalize
      end.join(" ")
    end.join(" ")
  end

  # Convert to lower.dot.case.
  def to_ldot
    udot = self.to_udot
    udot.downcase
  end

  # Convert to Upper.Dot.Case.
  def to_udot
    split_camel.map do |cw|
      cw.split(/\.|_|-|\s/).map do |w|
        w.capitalize
      end.join(".")
    end.join(".")
  end


  # ----------------------------------------------------------------------------
  # Private
  # ----------------------------------------------------------------------------
  private
  # Split string according to camel case.
  def split_camel
    self.split(/(?=[A-Z])/)
  end

  # Make first character lower case.
  def make_head_lower
    self[0].downcase + self[1..-1]
  end

end
