class Anagram
  attr_reader(:word_input1, :word_input2)
  def initialize(word_input1, word_input2)
    @word_input1 = word_input1.downcase().chars.sort.join.delete(" ")
    @word_input2 = word_input2.downcase().chars.sort.join.delete(" ")
  end

  def word_test
    if @word_input1 =~ /[aeiou]/ && @word_input2 =~ /[aeiou]/
      if @word_input1 === @word_input2
        final_answer = "These words when compared are anagrams."
      else
        word1_array = @word_input1.split("")
        word2_array = @word_input2.split("")
        antigram_counter = []
        word1_array.each do |letter1|
          if word2_array.include?(letter1)
            antigram_counter.push("BAD")
          end
        end
        if antigram_counter.include?("BAD")
          final_answer = "You have two words that when compared are neither anagrams or antigrams"
        else
          final_answer = "These words when compared have no letter matches and are antigrams."
        end
      end
    else
      final_answer = "You need to input actual words"
    end
    final_answer
  end
end
