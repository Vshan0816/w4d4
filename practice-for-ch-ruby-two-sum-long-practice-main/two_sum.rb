def two_sum?(arr, target_sum) # n^2
    arr.each_with_index do |num1, idx1| # n
        arr.each_with_index do |num2, idx2| # n
            if idx1 < idx2 
                return true if num1 + num2 == target_sum
            end
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum) #n + n log n == n log n
    sort = arr.sort # n log n
    i = 0
    j = arr.length-1
    while i != j # n
        if sort[i] + sort[j] > target_sum
            j -= 1
        elsif sort[i] + sort[j] < target_sum
            i += 1
        else
            return true
        end
    end
    false
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false