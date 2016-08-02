# Based on: http://www.theodinproject.com/ruby-programming/building-blocks
#
# Implement a method stock_picker that takes in an array of stock prices, one
# for each hypothetical day. It should return a pair of days representing the
# best day to buy and the best day to sell. Days start at 0.
#
#     > stock_picker([17,3,6,9,15,8,6,1,10])
#     => [1,4]  # for a profit of $15 - $3 == $12

class Array
  def stock_picker
    index = 1
    pair_of_days = []
    greatest = 0
    day_to_buy = 0
    day_to_sell = 0
    each.with_index do |element, index_of_element|
      internal_index = index
      until internal_index == length
        result = self[internal_index] - element
        if result > greatest
          greatest = result
          day_to_sell = internal_index
          day_to_buy = index_of_element
        end
        internal_index += 1
      end
      index += 1
    end
    p pair_of_days << day_to_buy << day_to_sell
  end
end

[17, 3, 6, 9, 15, 8, 6, 1, 10].stock_picker
[25,2,10,9].stock_picker
[10,12,5,3,20,1,9,20].stock_picker
[10,9,8,7,6].stock_picker
[18,17,17,16,15].stock_picker
