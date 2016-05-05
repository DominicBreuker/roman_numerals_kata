require_relative './roman_letter.rb'

class RomanNumber
  attr_accessor :numeral

  def initialize(numeral)
    raise ArgumentError.new unless numeral.kind_of?(String)

    self.numeral = numeral.chars
  end

  def to_arabic
    counter = 0
    @highest_letter_value = 0

    numeral.reverse.each do |letter|
      roman_letter = RomanLetter.new(letter)
      increase_highest_letter_value_if_larger roman_letter

      if letter_smaller? roman_letter
        counter -= roman_letter.to_arabic
      else
        counter += roman_letter.to_arabic
      end
    end

    counter
  end

  private

  def increase_highest_letter_value_if_larger roman_letter
    if roman_letter.to_arabic > @highest_letter_value
      @highest_letter_value = roman_letter.to_arabic
    end
  end

  def letter_smaller? roman_letter
    roman_letter.to_arabic < @highest_letter_value
  end
end