class RomanLetter
  MAPPING = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  attr_accessor :letter

  def initialize letter
    self.letter = letter
  end

  def to_arabic
    @arabic_value ||= MAPPING[letter]
  end
end