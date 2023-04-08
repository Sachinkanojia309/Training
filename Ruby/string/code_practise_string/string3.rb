=begin
Find the Difference

You are given two strings s and t. 
String t is generated by randomly shuffling string s and then adding one more letter at a random position. 
Return the letter that was added to t.

=end

def find_the_difference(s,t)
  s = s.split("")               #convert into array
  t = t.split("")               #convert into array
  for i in 0...s.length
    x = s[i]
    ind = t.index(x).to_i
    t.delete_at(ind)
    s.delete_at(i)
  end
  return t.join("")             #convert into string
end

p find_the_difference("abcd","abcde")
p find_the_difference("", "y")
p find_the_difference("ae", "aea")