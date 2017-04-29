# ==============================================================================
# LIB - STRING FOUNDATION - CASE
# ==============================================================================
# frozen_string_literal: true
class String

  # Convert to lowerCamelCase.
  def to_lcamel
    ucamel = self.to_ucamel
    ucamel[0].downcase + ucamel[1..-1]
  end

  # Convert to UpperCamelCase.
  def to_ucamel
    if self.include?('_') || self.include?('-') || self.include?('.') || self.include?(' ')
      str = self
      str.split('_').map do |uw|
        uw.split('-').map do |hw|
          hw.split('.').map do |dw|
            dw.split(' ').map do |sw|
              sw.capitalize
            end.join
          end.join
        end.join
      end.join
    else
      self[0].upcase + self[1..-1]
    end
  end

  # Convert to lower_snake_case.
  def to_lsnake
  end

  # Convert to Upper_Snake_Case.
  def to_usnake
    if self.include?('_') || self.include?('-') || self.include?('.') || self.include?(' ')
      str = self
      str.split('_').map do |uw|
        uw.split('-').map do |hw|
          hw.split('.').map do |dw|
            dw.split(' ').map do |sw|
              sw.capitalize
            end.join('_')
          end.join('_')
        end.join('_')
      end.join('_')
    else
      self[0].upcase + self[1..-1]
    end
  end

  # Convert to lower-kebab-case.
  def to_lkebab
  end

  # Convert to Upper-Kebab-Case.
  def to_ukebab
  end

  # Convert to lower space case.
  def to_lspace
  end

  # Convert to Upper Space Case.
  def to_uspace
  end

  # Convert to lower.dot.case.
  def to_ldot
  end

  # Convert to Upper.Dot.Case.
  def to_udot
  end

end
