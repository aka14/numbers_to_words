class NumberWord

  NUMBER_WORD = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight',
                  9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'tweleve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
                  16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty',                       50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

  def digits_count(num)
    num.to_s.size
  end

  def digit_1(num)
    return NUMBER_WORD[num]
  end

  def digit_2(num)
    quotient = num / 10
    remainder = num % 10
    if quotient == 1 || remainder == 0
      return NUMBER_WORD[num]
    else
      return NUMBER_WORD[quotient * 10] +  ' ' + NUMBER_WORD[remainder]
    end
  end

  def digit_3(num)
    quotient = num / 100
    remainder = num % 100
    first_word = digit_1(quotient) + ' ' + 'hundred'
    if remainder == 0
      first_word
    else
      digits_count_remainder = digits_count(remainder)
      last_word = digits_count_remainder == 1 ? digit_1(remainder) : digit_2(remainder)
      return first_word + ' ' + last_word
    end
  end

  def digit_4_5_6(num)
    quotient = num / 1000
    remainder = num % 1000
    digits_count_remainder = digits_count(remainder)
    digits_count_quotient = digits_count(quotient)
    if digits_count_quotient == 1
      word_prefix = digit_1(quotient)
    elsif digits_count_quotient == 2
      word_prefix = digit_2(quotient)
    elsif digits_count_quotient == 3
      word_prefix = digit_3(quotient)
    end
    if digits_count_remainder == 1
      word_suffix = digit_1(remainder)
    elsif digits_count_remainder == 2
      word_suffix = digit_2(remainder)
    elsif digits_count_remainder == 3
      word_suffix = digit_3(remainder)
    end
    if remainder == 0
      return word_prefix + ' ' + 'thousand'
    else
      return word_prefix + ' ' + 'thousand' + ' ' + word_suffix
    end
  end

  def digit_7_8_9(num)
    quotient = num / 1000000
    remainder = num % 1000000
    digits_count_quotient = digits_count(quotient)
    digits_count_remainder = digits_count(remainder)
    if digits_count_remainder < 4
      word_suffix = send("digit_#{digits_count_remainder}", remainder)
    else
      word_suffix = digit_4_5_6(remainder)
    end
    word_prefix = send("digit_#{digits_count_quotient}", quotient)
    if remainder == 0
      return word_prefix + ' ' + 'million'
    else
      return word_prefix + ' ' + 'million' + ' ' + word_suffix
    end
  end

  def validates_input(number)
    if(number.instance_of?(Fixnum) && number >= 0 && number < 999999999)
      return true
    else
      puts "Invalid Input: Enter a number between 1 and 999999999"
      return false
    end
  end

  def convert(number)
    return false unless validates_input(number)
    digits_count = digits_count(number)
    if digits_count == 1
      digit_1(number)
    elsif digits_count == 2
      digit_2(number)
    elsif digits_count == 3
      digit_3(number)
    elsif(digits_count > 3 && digits_count < 7)
      digit_4_5_6(number)
    elsif(digits_count > 6 && digits_count < 10)
      digit_7_8_9(number)
    end
  end

end
