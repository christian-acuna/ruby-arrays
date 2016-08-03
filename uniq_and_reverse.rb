require 'byebug'
class Array
  def uniq_and_reverse
    unqiue_array = []
    self.each do |el|
      unqiue_array << el unless unqiue_array.include?(el)
    end
    unqiue_array.reverse
  end
end

p [1,2,2,3,4,4,5,5,6].uniq_and_reverse
