 # a  =[1,2,3]
# b  = "ted"
# p b.permutation.to_a


def first_anagram?(str1, str2) #O(n!)
 permutation1 = str1.chars.permutation.to_a #n!
  zi = str2.chars
  permutation1.include?(zi) #n
end


def second_anagram?(str1, str2) # n^2
  str1.each_char do |char| # n
    index = str2.index(char) #n
    if index != nil
      str2[index] = "" 
    else
      return false
    end
  end
  return true if str2.length == 0
end



def third_anagram?(str1, str2)#3n + 2(nlogn) = O(nlogn)
  sort1 = str1.chars.sort # n + (nlogn)
  sort2 = str2.chars.sort # n + (nlogn)
  sort1 == sort2 #n

end


def fourth_anagram?(str1, str2) #2n = O(n)
  hash1 = Hash.new(0)
  str1.each_char do |char| #n
    hash1[char] += 1
  end
  str2.each_char do |char| #n
    hash1[char] -= 1
  end
  hash1.values.all? {|val| val == 0} #n + n (for bonus)
end

p fourth_anagram?("gizmo", "sally")
p fourth_anagram?("elvis", "lives") 
