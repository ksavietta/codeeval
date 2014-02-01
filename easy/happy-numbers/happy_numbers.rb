# CHALLENGE DESCRIPTION:

# A happy number is defined by the following process. Starting with any positive integer, replace the number by the sum of the squares of its digits,
# and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
# Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers.

# For the curious, here's why 7 is a happy number: 7->49->97->130->10->1.
# Here's why 22 is NOT a happy number: 22->8->64->52->29->85->89->145->42->20->4->16->37->58->89 ...

require 'pry'

class HappyNumber
  def self.transform_happy_number(line)
    number_path_array = []
    total = 0
    number = line
    until number_path_array.include?(1) || number_path_array.include?(total)
      number_path_array << total
      happy_number_array = number.split("").map {|x| x.to_i}
      squared_array = happy_number_array.map {|x| x**2}
      total = squared_array.inject{|sum,x| sum+x}
      number = total.to_s
    end

    if number_path_array.include?(1)
      puts 1
    else
      puts 0
    end
  end
end

File.open(ARGV[0]).each_line do |line|
  HappyNumber.transform_happy_number(line)
end



