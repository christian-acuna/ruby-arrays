class Array
  def my_transpose
    index = 0
    transposed = []
    col = []
    until index == length
      each do |element|
        col << element[index]
      end
      transposed << col
      index += 1
      col = []
    end
    p transposed
  end
end

[[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose
[[0, 3, 6], [1, 4, 7], [2, 5, 8]].my_transpose
