# Given a string S, print all permutations of a given string.

def permu(str)
  arr = str.split('')
  return arr.permutation.map{|element| element.join}.uniq    #uniq is used to remove duplicate
end

p permu("aa")
p permu("abcd")