def num_to_s(num, base)
  base_power = 0
  until (num / (base**base_power)).zero?
    base_power += 1
  end

  hash = {}
  power = 0
  until power >= base_power
    hash[power] = (num / (base ** power) % base).to_s
    power += 1

  end
  string = ""
  base_power -= 1

  until base_power < 0
    string << hash[base_power]
    base_power -= 1
  end
  p string
end

num_to_s(234, 10)
num_to_s(234, 2)
num_to_s(5, 10) #=> "5"
num_to_s(5, 2)  #=> "101"
num_to_s(5, 16) #=> "5"
num_to_s(234, 16) #=> "EA"
