def createPhoneNumber(numbers)
  phone_number = '('
  numbers.each.with_index do |element, index|
    if index.between?(0, 2)
      phone_number << element.to_s
      phone_number << ') ' if index == 2
    elsif index.between?(3, 5)
      phone_number << element.to_s
      phone_number << '-' if index == 5
    else
      phone_number << element.to_s
    end
  end
  puts phone_number
end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
