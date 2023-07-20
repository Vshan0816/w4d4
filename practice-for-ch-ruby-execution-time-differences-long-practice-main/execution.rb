
require "byebug"
def my_min(arr)
  current = 0
  arr.each.with_index do |num1, idx1|
    arr.each.with_index do |num2, idx2|
      debugger
      if num1 < num2 
        current = num1 
      else
        current = num2
      end
    end
  end
  current
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

p my_min(list)