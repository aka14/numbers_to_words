require 'rspec'
require './number_word'

describe NumberWord do

  before {
    @number_word = NumberWord.new
  }

  describe '#digits_count' do
    it 'should return 1' do
      expect(@number_word.digits_count(9)).to eq(1)
    end

    it 'should return 4' do
      expect(@number_word.digits_count(1234)).to eq(4)
    end
  end

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

  describe '#digit_4_5_6' do
    it 'should return one thousand' do
      expect(@number_word.digit_4_5_6(1000)).to eq('one thousand')
    end

    it 'should return one thousand nine' do
      expect(@number_word.digit_4_5_6(1009)).to eq('one thousand nine')
    end

    it 'should return two thousand one hundred' do
      expect(@number_word.digit_4_5_6(2100)).to eq('two thousand one hundred')
    end

    it 'should return three thousand eighteen' do
      expect(@number_word.digit_4_5_6(3018)).to eq('three thousand eighteen')
    end

    it 'should return nine thousand nine hundred ninety nine' do
      expect(@number_word.digit_4_5_6(9999)).to eq('nine thousand nine hundred ninety nine')
    end

    it 'should return ten thousand' do
      expect(@number_word.digit_4_5_6(10000)).to eq('ten thousand')
    end

    it 'should return ten thousand nineteen' do
      expect(@number_word.digit_4_5_6(10019)).to eq('ten thousand nineteen')
    end

    it 'should return ninety nine thousand nine hundred ninety nine' do
      expect(@number_word.digit_4_5_6(99999)).to eq('ninety nine thousand nine hundred ninety nine')
    end

    it 'should return five hundred thousand' do
      expect(@number_word.digit_4_5_6(500000)).to eq('five hundred thousand')
    end

    it 'should return eight hundred thousand one' do
      expect(@number_word.digit_4_5_6(800001)).to eq('eight hundred thousand one')
    end
  end

  describe '#digit_7_8_9' do
    it 'should return one million' do
      expect(@number_word.digit_7_8_9(1000000)).to eq('one million')
    end

    it 'should return one million seven' do
      expect(@number_word.digit_7_8_9(1000007)).to eq('one million seven')
    end

    it 'should return fifty four million four thousand' do
      expect(@number_word.digit_7_8_9(54004000)).to eq('fifty four million four thousand')
    end

    it 'should return eight hundred sixty four million three hundred forty three thousand two hundred eighteen' do
      expect(@number_word.digit_7_8_9(864343218)).to eq('eight hundred sixty four million three hundred forty three thousand two hundred eighteen')
    end
  end

  describe '#validates_input' do
    it 'should return true' do
      expect(@number_word.validates_input(1000000)).to eq(true)
    end

    it 'should return false' do
      expect(@number_word.validates_input(1000000000)).to eq(false)
    end
  end


  describe '#convert' do
    it 'should return zero' do
      expect(@number_word.convert(0)).to eq('zero')
    end

    it 'should return sixteen' do
      expect(@number_word.convert(16)).to eq('sixteen')
    end

    it 'should return four hundred forty' do
      expect(@number_word.convert(440)).to eq('four hundred forty')
    end

    it 'should return seven thousand six hundred' do
      expect(@number_word.convert(7600)).to eq('seven thousand six hundred')
    end
    it 'should return eighty thousand' do
      expect(@number_word.convert(80000)).to eq('eighty thousand')
    end

    it 'should return three hundred thousand two hundred eleven' do
      expect(@number_word.convert(300211)).to eq('three hundred thousand two hundred eleven')
    end
    it 'should return one million four' do
      expect(@number_word.convert(1000004)).to eq('one million four')
    end

    it 'should return fifty million eight hundred thousand one hundred' do
      expect(@number_word.convert(50800100)).to eq('fifty million eight hundred thousand one hundred')
    end

    it 'should return ninety million four hundred seven' do
      expect(@number_word.convert(90000407)).to eq('ninety million four hundred seven')
    end

    it 'should return false' do
      expect(@number_word.convert(1234567890)).to eq(false)
    end
  end

end
