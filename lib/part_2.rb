def palindrome?(str)
  reversed_str = ""
  i = str.length - 1
  while i >= 0
    reversed_str += str[i]
    i -= 1
  end  
  str == reversed_str
end  

def substrings(str)
subs = []
  (0...str.length).each do |start_i|
    (start_i...str.length).each do |end_i|
      subs << str[start_i..end_i]
    end
  end
  subs    
end  

def palindrome_substrings(str)
  substrings(str).select {|substr| palindrome?(substr) && substr.length > 1}
end  