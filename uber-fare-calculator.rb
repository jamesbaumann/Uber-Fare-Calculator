## DEFINE YOUR METHODS HERE
#write your method for uberX here
def uberX_fare_calculator(distance, minutes)
  base_fareX = 2.55
  xTotal = base_fareX + (0.35 * minutes.to_i) + (1.75 * distance.to_i)
  if xTotal < 8
    puts 8
  else
    puts "The total for an UberX is #{xTotal}"
  end
end

#write your method for uberBlack here

def uberB_fare_calculator(distance, minutes)
  base_fareB = 7
  bTotal = base_fareB + (0.65 * minutes.to_i) + (3.75 * distance.to_i)
  if bTotal < 15
    puts 15
  else
    puts "The total for an UberBlack is #{bTotal}"
  end
end

#write your method for uberXL here

def uberXL_fare_calculator(distance, minutes)
  base_fareXL = 3.85
  xlTotal = base_fareXL + (0.50 * minutes.to_i) + (2.85 * distance.to_i)
  if xlTotal < 10.50
    puts 10.50
  else
    puts "The total for an UberXL is #{xlTotal}"
  end
end


#write your method for uberSUV here

def uberSUV_fare_calculator(distance, minutes)
  base_fareSUV = 14.00
  suvTotal = base_fareSUV + (0.80 * minutes.to_i) + (4.50 * distance.to_i)
  if suvTotal < 25.00
    puts 25.00
  else
    puts "The total for an UberSUV is #{suvTotal}"
  end
end

##  CALL/USE YOUR METHODS HERE

puts "Choose which type of uber you would liketo take"
puts "1 = UberX"
puts "2 = UberXL"
puts "3 = UberBlack"
puts "4 = UberSUV"
type = gets.chomp

puts "How far would you like to go in miles?"
distance = gets.chomp

puts "How long will your trip take in minutes?"
minutes = gets.chomp

if type == "1"
  uberX_fare_calculator(distance,minutes)
elsif type == "2"
  uberXL_fare_calculator(distance,minutes)
elsif type == "3"
  uberB_fare_calculator(distance,minutes)
else
  uberSUV_fare_calculator(distance,minutes)
end

