require 'rspec/expectations'
require_relative '../src/roman_number.rb'

describe 'roman numerals conversion' do

  describe 'for single letter numerals' do
    it 'should convert I to 1' do
      expect(RomanNumber.new('I').to_arabic).to eq(1)
    end

    it 'should convert V to 5' do
      expect(RomanNumber.new('V').to_arabic).to eq(5)
    end

    it 'should convert X to 10' do
      expect(RomanNumber.new('X').to_arabic).to eq(10)
    end

    it 'should convert L to 50' do
      expect(RomanNumber.new('L').to_arabic).to eq(50)
    end

    it 'should convert C to 100' do
      expect(RomanNumber.new('C').to_arabic).to eq(100)
    end

    it 'should convert D to 500' do
      expect(RomanNumber.new('D').to_arabic).to eq(500)
    end

    it 'should convert M to 1000' do
      expect(RomanNumber.new('M').to_arabic).to eq(1000)
    end
  end

  describe 'for letters only with I' do
    it 'should convert II to 2' do
      expect(RomanNumber.new('II').to_arabic).to eq(2)
    end

    it 'should convert III to 3' do
      expect(RomanNumber.new('III').to_arabic).to eq(3)
    end
  end

  describe 'for letters only with I and V' do
    it 'should convert IV to 4' do
      expect(RomanNumber.new('IV').to_arabic).to eq(4)
    end
  end

  describe 'for letters representing years' do
    it 'should convert MCMLIV to 1954' do
      expect(RomanNumber.new('MCMLIV').to_arabic).to eq(1954)
    end

    it 'should convert MCMXC to 1990' do
      expect(RomanNumber.new('MCMXC').to_arabic).to eq(1990)
    end

    it 'should convert MMXIV to 2014' do
      expect(RomanNumber.new('MMXIV').to_arabic).to eq(2014)
    end
  end

  describe 'some large numbers from the internet' do
    it 'should convert MMMCDXCVII to 3497' do
      expect(RomanNumber.new('MMMCDXCVII').to_arabic).to eq(3497)
    end

    it 'should convert XCVIII to 98' do
      expect(RomanNumber.new('XCVIII').to_arabic).to eq(98)
    end

    it 'should convert IIC to 98' do
      expect(RomanNumber.new('IIC').to_arabic).to eq(98)
    end
  end

  describe 'error cases' do
    it 'should raise if initialised with something other than a string' do
      expect{ RomanNumber.new(123) }.to raise_error(ArgumentError)
    end
  end

end
