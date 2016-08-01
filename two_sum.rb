class Array
  def two_sum
    master_array = []
    each.with_index(1) do |value, index|
      # puts "#{value}: #{index}"
      until length == index
        # puts "#{value} #{self[index]}"
        if (value + self[index]).zero?
          element1 = index(value)
          element2 = index
          array = []
          array << element1 << element2
          master_array << array
          index += 1
          # puts "after adding one: #{index}"
        else
          index += 1
        end
      end
    end
    p master_array
  end
end

[-1, 0, 2, -2, 1].two_sum
