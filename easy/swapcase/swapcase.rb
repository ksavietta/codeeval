# def swap_case(sentence)
#   x = sentence.split.map! {|word| word.swapcase}
#   x.join(" ")
# end

# File.open(ARGV[0]).each_line do |line|
#   puts swap_case(line)
# end


File.open(ARGV[0]).each_line do |line|
  x = line.split.map! {|word| word.swapcase}
  puts x.join(" ")
end