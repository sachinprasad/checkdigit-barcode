#!/usr/bin/env ruby

class CheckDigitGenerator
  # Returns barcode along with Check digit 
  def barcode(bar_code)
    "#{bar_code}#{isbn13_check_digit(bar_code)}"
  end

  # Returns on check digit 
  def isbn13_check_digit(bar_code)
    int_chars = bar_code.to_s.chars.map(&:to_i)
    marker = 1
    sum = 0
    int_chars.each do |num|
      sum += num*marker
      marker = (marker == 1) ? 3 : 1
    end
    (10 - sum % 10)
  end
end
