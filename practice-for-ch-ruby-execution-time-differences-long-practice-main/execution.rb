
require "byebug"
# def my_min(arr) #n^2
#  arr.each do |num| #n
#   return num if arr.all?{|n| num <= n} #n
#  end
# end



def my_min(arr)
  arr.inject do |acc, el| #n
    if acc < el
      acc
    else
      el
    end
  end
end

#   list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min(list)

# def largest_contiguous_subsum(arr) #n^2 + n == n^2
#   new_arr = []
#   (0...arr.length).each do |i| #n
#     (i...arr.length).each do |j| #n
#       new_arr << substring = arr[i..j].sum 
#     end
#   end
#   new_arr.max #n
# end


def largest_contiguous_subsum(arr)
 largest_sum = arr[0]
  arr.inject do |current_sum, el|
    
    if current_sum > largest_sum
     largest_sum = current_sum
     current_sum += el
    else
      current_sum + el 
    end
  end
  largest_sum
end

list = [2, 3, -6, 7,-6,7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
