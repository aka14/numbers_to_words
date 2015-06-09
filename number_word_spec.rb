require 'rspec'
require './number_word'

describe NumberWord do

  before {
    @number_word = NumberWord.new
  }

  describe '#digit_1' do
    it 'should return one' do
      expect(@number_word.digit_1(1)).to eq('one')
    end

    it 'should return eight' do
      expect(@number_word.digit_1(8)).to eq('eight')
    end
  end

  describe '#digit_2' do
    it 'should return thirteen' do
      expect(@number_word.digit_2(13)).to eq('thirteen')
    end

    it 'should return forty' do
      expect(@number_word.digit_2(40)).to eq('forty')
    end

    it 'should return eighty seven' do
      expect(@number_word.digit_2(87)).to eq('eighty seven')
    end
  end

  describe '#digit_3' do
    it 'should return one hundred' do
      expect(@number_word.digit_3(100)).to eq('one hundred')
    end

    it 'should return three hundred twenty eight' do
      expect(@number_word.digit_3(328)).to eq('three hundred twenty eight')
    end

    it 'should return five hundred one' do
      expect(@number_word.digit_3(501)).to eq('five hundred one')
    end

    it 'should return nine hundred ninety nine' do
      expect(@number_word.digit_3(999)).to eq('nine hundred ninety nine')
    end
  end

end
