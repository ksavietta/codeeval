# (25, 4) (1, -6)
# (47, 43) (-25, -11)
# All numbers in input are integers between -100 and 100.

# OUTPUT SAMPLE:

# Print results in the following way.

# 26
# 90
require 'pry'

class Distance

  def self.find_distance(line)
    coordinates = line.strip.split(") (")
    coordinates.map! {|x| x.gsub(/[()]/, '')}
    coordinates.map! {|x| x.split(", ")}
    coordinates.map! do |x|
      x.map! {|y| y.to_i }
    end
    puts calculate_distance(coordinates).to_i
  end

  def self.calculate_distance(coordinate_array)
    coordinate_array
    distance = Math.sqrt((coordinate_array.first.first-coordinate_array.last.first)**2 + (coordinate_array.first.last-coordinate_array.last.last)**2)
  end

end

File.open(ARGV[0]).each_line do |line|
  Distance.find_distance(line)
end