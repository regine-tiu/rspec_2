def partition(arr, n)
  less = []
  greater = []

  arr.each do |ele|
    if ele < n
      less << ele
    else
      greater << ele 
    end  
  end 
  [less, greater]
end  

def merge(hash_1, hash_2)
 new_hash = {}
 hash_1.each { |k, v| new_hash[k] = v}
 hash_2.each { |k, v| new_hash[k] = v}
 new_hash
end  

def censor(sent, curse_words)
  words = sent.split
  new_words = words.map do |word|
    if curse_words.include?(word.downcase)
      star_vowels(word)
    else
      word  
    end  
  end  
 new_words.join(" ")
end  

def star_vowels(word)
  vowels = "aeiou"
  new_word = ""
  word.each_char do |char|
    if vowels.include?(char.downcase)
      new_word += "*"
    else  
      new_word += char
    end  
  end  
  new_word
end  
  
def power_of_two?(num)
 start_num = 1
 while start_num < num
    start_num *= 2
 end 
 start_num == num
end  
