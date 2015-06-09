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

end