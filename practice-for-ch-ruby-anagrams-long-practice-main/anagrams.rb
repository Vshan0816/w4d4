 # a  =[1,2,3]
# b  = "ted"
# p b.permutation.to_a


def anagram?(str1, str2)
 permutation1 = str1.chars.permutation.to_a 
  zi = str2.chars
  permutation1.include?(zi)
end

p anagram?("gizmo", "sally")
p anagram?("elvis", "lives") 
