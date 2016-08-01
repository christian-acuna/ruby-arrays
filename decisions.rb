# puts 'Do you want ice cream or carrot sticks?'
# choice = gets.chomp.downcase
#
# if choice == 'ice cream'
#   puts 'You get ice cream!!'
# elsif choice == 'carrot sticks'
#   puts 'You get carrot sticks!'
# else
#   puts 'Enter invalid.'
# end

puts 'Do you want something sweet? (y/n)'

sugar_wanted = gets.chomp.downcase

if sugar_wanted == 'y'
  puts 'Eat ice cream!'
else
  puts 'Eat carrot sticks!'
end
