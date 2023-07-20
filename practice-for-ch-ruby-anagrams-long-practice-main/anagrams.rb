 # a  =[1,2,3]
# b  = "ted"
# p b.permutation.to_a


# def anagram?(str1, str2) #O(n!)
#  permutation1 = str1.chars.permutation.to_a #n!
#   zi = str2.chars
#   permutation1.include?(zi) #n
# end


def anagram?(str1, str2) # n^2
  str1.each_char do |char| # n
    index = str2.index(char)
    if index != nil #n
      str2[index] = "" 
    else
      return false
    end
  end
  return true if str2.length == 0
end

p anagram?("gizmo", "sally")
p anagram?("elvis", "lives") 
