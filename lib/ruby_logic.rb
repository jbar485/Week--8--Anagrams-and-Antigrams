class Word
  attr_reader(:word_input1, :word_input2)
  def initialize(word_input1, word_input2)
    @word_input1 = word_input1.downcase()
    @word_input2 = word_input2.downcase()
  end

  def word_test
    if @word_input1.length() == @word_input2.length()
      word1 = @word_input1.chars.sort.join
      word2 = @word_input2.chars.sort.join
      if word1 == word2
        final_answer = "These words are anagrams."
      end
    end
    final_answer
  end
end
