class Array
  def my_uniq
    each do |i|
      delete_at(find_index(i)) until count(i) == 1 if count(i) >= 2
    end
    sort
  end
end

# require './unqiue' IN IRB
#
# my_arry = [1, 1, 2, 2, 3]
#
# my_arry.my_uniq
#
# puts my_arry
