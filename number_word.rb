class NumberWord

  NUMBER_WORD = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
                  10 => 'ten', 11 => 'eleven', 12 => 'tweleve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
                  17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty',
                  60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}

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
    return digit_1(quotient) + ' ' + 'hundred' + ' ' + digit_2(remainder)
  end

end
