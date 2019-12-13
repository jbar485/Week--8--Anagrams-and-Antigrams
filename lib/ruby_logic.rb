class Word
  attr_reader(:word_input1, :word_input2)
  def initialize(word_input1, word_input2)
    @word_input1 = word_input1.downcase()
    @word_input2 = word_input2.downcase()
  end

  def word_test
    word1 = @word_input1.chars.sort.join
    word2 = @word_input2.chars.sort.join
    if word1 =~ /[aeiou]/ && word2 =~ /[aeiou]/
      if word1 === word2
        final_answer = "These words are anagrams."
      else
        word11 = word1.split("")
        word22 = word2.split("")
        if [word11].any? {|word| word.include?(word22)}
          final_answer = "You have two words that are neither anagrams or antigrams"
        else
          final_answer = "These words have no letter matches and are antigrams."
        end
      end
    else
      final_answer = "You need to input actual words"
    end
    binding.pry
    puts final_answer
    final_answer
  end
end
