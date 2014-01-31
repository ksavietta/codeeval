# CHALLENGE DESCRIPTION:

# Print the odd numbers from 1 to 99.

# OUTPUT SAMPLE:

# Print the odd numbers from 1 to 99, one number per line.

(0..99).each do |i|
  puts i unless i%2==0
end