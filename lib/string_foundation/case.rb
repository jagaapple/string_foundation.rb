# ==============================================================================
# LIB - STRING FOUNDATION - CASE
# ==============================================================================
# frozen_string_literal: true
class String

  # Convert to lowerCamelCase.
  def to_lcamel
    ucamel = self.to_ucamel
    ucamel.make_head_lower
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
    usnake = self.to_usnake
    usnake.downcase
  end

  # Convert to Upper_Snake_Case.
  def to_usnake
    str = self
    str.split('_').map do |uw|
      uw.split('-').map do |hw|
        hw.split('.').map do |dw|
          dw.split(' ').map do |sw|
            sw.split_camel.map do |cw|
              cw.capitalize
            end.join('_')
          end.join('_')
        end.join('_')
      end.join('_')
    end.join('_')
  end

  # Convert to lower-kebab-case.
  def to_lkebab
    ukebab = self.to_ukebab
    ukebab.downcase
  end

  # Convert to Upper-Kebab-Case.
  def to_ukebab
    str = self
    str.split('_').map do |uw|
      uw.split('-').map do |hw|
        hw.split('.').map do |dw|
          dw.split(' ').map do |sw|
            sw.split_camel.map do |cw|
              cw.capitalize
            end.join('-')
          end.join('-')
        end.join('-')
      end.join('-')
    end.join('-')
  end

  # Convert to lower space case.
  def to_lspace
    uspace = self.to_uspace
    uspace.downcase
  end

  # Convert to Upper Space Case.
  def to_uspace
    self.split('_').map do |uw|
      uw.split('-').map do |hw|
        hw.split('.').map do |dw|
          dw.split(' ').map do |sw|
            sw.split_camel.map do |cw|
              cw.capitalize
            end.join(' ')
          end.join(' ')
        end.join(' ')
      end.join(' ')
    end.join(' ')
  end

  # Convert to lower.dot.case.
  def to_ldot
    udot = self.to_udot
    udot.downcase
  end

  # Convert to Upper.Dot.Case.
  def to_udot
    self.split('_').map do |uw|
      uw.split('-').map do |hw|
        hw.split('.').map do |dw|
          dw.split(' ').map do |sw|
            sw.split_camel.map do |cw|
              cw.capitalize
            end.join('.')
          end.join('.')
        end.join('.')
      end.join('.')
    end.join('.')
  end

  def split_camel
    words = []
    word = []
    self.each_char do |c|  
      if c.is_upper?
        words << word.join if not word.size == 0
        word = [c]
      else
        word << c
      end
    end
    words << word.join
  end

  def is_upper?
    /[[:upper:]]/.match(self)
  end

  def is_lower?
    /[[:lower:]]/.match(self)
  end

  def make_head_lower
    self[0].downcase + self[1..-1]
  end

end
