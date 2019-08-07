class Book
  attr_reader :title

  def title=(new_title)
    @title = titleize new_title
  end

  private
  def titleize words
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
    result = words.split.each_with_index.map { |word, idx|
      if words_no_cap.include?(word) and idx != 0
        word
      else
        word.capitalize
      end
    }.join(' ')
    result
  end
end
