# write your code here
def echo words
  words
end

def shout words
  words.upcase
end

def repeat words, num = 1
  output = words + " " + words
  (num-2).times do
    output = output + " " + words
  end
  output
end

def start_of_word word, num
  word[0..num-1]
end

def first_word words
  words.split()[0]
end

def titleize words
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  result = words.split.each_with_index.map { |word, idx|
    if words_no_cap.include?(word) and idx != 0
      word
    else
      word.capitalize
    end
  }.join(' ')
  result
end