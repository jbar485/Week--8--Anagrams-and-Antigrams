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
        antigram_counter = []
        word11.each do |letter1|
          if word22.include?(letter1)
            antigram_counter.push("BAD")
          end
        end
        if antigram_counter.include?("BAD")
          final_answer = "You have two words that are neither anagrams or antigrams"
        else
          final_answer = "These words have no letter matches and are antigrams."
        end
      end
    else
      final_answer = "You need to input actual words"
    end
    final_answer
  end
end
