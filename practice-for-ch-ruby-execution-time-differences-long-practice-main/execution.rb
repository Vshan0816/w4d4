
require "byebug"
def my_min(arr) #n^2
 arr.each do |num| #n
  return num if arr.all?{|n| num <= n} #n
 end
end



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

def largest_contiguous_subsum(arr) #n^2 + n == n^2
  new_arr = []
  (0...arr.length).each do |i| #n
    (i...arr.length).each do |j| #n
      new_arr << substring = arr[i..j].sum 
    end
  end
  new_arr.mc #n
end


def largest_contiguous_subsum(arr) #n
  largest = arr[0]
  current = 0
  arr.each do |num|
    current += num
    if current > largest
      largest = current
      current = 0 if current < 0
    else
      current = 0 if current < 0
    end
  end
  largest
end

list = [2, 3, -6, 7,-6,7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
