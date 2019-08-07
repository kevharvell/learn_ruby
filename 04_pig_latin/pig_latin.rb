#write your code here
def translate words
  vowels = "aeiou"
  result = words.split.map {|word|
    if vowels.include?(word[0])
      word = word + "ay"
    elsif not vowels.include?(word[0]) and
          not vowels.include?(word[1]) and
          not vowels.include?(word[2]) or
          word[0..2] == "squ"
      word = word[3..-1] + word[0..2] + "ay"
    elsif not vowels.include?(word[0]) and
          not vowels.include?(word[1]) or
          word[0..1] == "qu"
      word = word[2..-1] + word[0..1] + "ay"
    else
      word = word[1..-1] + word[0] + "ay"
    end
  }.join(" ")
  result
end