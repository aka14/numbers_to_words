require './number_word'

@number_word = NumberWord.new

if ARGV[0].nil?
  puts "Please enter an argument."
else
  puts @number_word.convert(ARGV[0].to_i)
end
