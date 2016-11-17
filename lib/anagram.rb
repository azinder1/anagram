class String
  define_method(:wordsplitter) do |other_words|
    word1 = self.upcase
    word_array = self.upcase.split("").sort().join("")
    words_array = other_words.upcase.split(" ")
    sorted_word_array = []
    words_array.each() do |word|
      word.split("").sort().push(word)
      sorted_word_array = sorted_word_array.push(word)
    end
    output_answer = ""
    sorted_word_array.each() do |word|
      if word_array == word
        output_answer.concat(word + " is an anagram of #{word1}"+ "<br>")
      else
        output_answer.concat(word + " is not an anagram of #{word1}"+ "<br>")
      end
    end
    output_answer
  end
end
