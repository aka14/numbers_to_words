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

end
