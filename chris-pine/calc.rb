puts "There are #{24 * 365} hours in a year"
mins_in_decade = ((60 * 24) * 365) * 10
puts "There are #{mins_in_decade} mins in a decade"
seconds_old = 60 * 60 * 24 * 365 * 26
p seconds_old
seconds_in_a_year = 31536000

puts "How old are you?"
age = gets.chomp.to_i

seconds_old_user = seconds_in_a_year * age

p seconds_old_user

 p 1246000000 / 31536000
