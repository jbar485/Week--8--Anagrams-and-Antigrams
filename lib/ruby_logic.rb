class Word
  attr_reader(:word_input1, :word_input2)
  def initialize(word_input1, word_input2)
    @word_input1 = word_input1.downcase()
    @word_input2 = word_input2.downcase()
  end

  def word_test
    word1 = @word_input1.chars.sort.join
    word2 = @word_input2.chars.sort.join
    puts word1
    if word1.scan(/[aeiouy]/) && word2.scan(/[aeiouy]/)
      if word1 == word2
        final_answer = "These words are anagrams."
      end
    else
      final_answer = "You need to input actual words!"
    end
    final_answer
  end
end
