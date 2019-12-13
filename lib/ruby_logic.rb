class Anagram
  attr_reader(:word_input1, :word_input2)
  def initialize(word_input1, word_input2)
    @word_input1 = word_input1.downcase()
    @word_input2 = word_input2.downcase()
  end

  def word_test
    word1_array = @word_input1.split(" ")
    word2_array = @word_input2.split(" ")
    final = []
    final_answer = ""
    if word1_array.length() == word2_array.length()
      word1_array.each do |array_one|
        word2_array.each do |array_two|
          word1 = array_one.chars.sort.join
          word2 = array_two.chars.sort.join
          if word1 =~ /[aeiou]/ && word2 =~ /[aeiou]/
            if word1 === word2
              final.push("These words are anagrams.")
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
                final.push("You have two words that are neither anagrams or antigrams")
              else
                final.push("These words have no letter matches and are antigrams.")
              end
            end
          else
            final.push("You need to input actual words")
          end
        end
      end
    else
      final.push("Enter the same amount of words per sentence.")
    end
    options = ["These words are anagrams.", "You have two words that are neither anagrams or antigrams", "These words have no letter matches and are antigrams.", "You need to input actual words", "Enter the same amount of words per sentence."]
    for each_word in options do
      word_count = final.count(each_word)
      if word_count == 1 && word_count > 0
        final_answer = final_answer.concat("#{each_word}")
      elsif word_count > 1
        final_answer = final_answer.concat("#{word_count} #{each_word} ")
      end
    end
    puts final
    final_answer = final.join
    final_answer
  end





  # def word_test
  #   word1 = @word_input1.chars.sort.join
  #   word2 = @word_input2.chars.sort.join
  #   if word1 =~ /[aeiou]/ && word2 =~ /[aeiou]/
  #     if word1 === word2
  #       final_answer = "These words are anagrams."
  #     else
  #       word11 = word1.split("")
  #       word22 = word2.split("")
  #       antigram_counter = []
  #       word11.each do |letter1|
  #         if word22.include?(letter1)
  #           antigram_counter.push("BAD")
  #         end
  #       end
  #       if antigram_counter.include?("BAD")
  #         final_answer = "You have two words that are neither anagrams or antigrams"
  #       else
  #         final_answer = "These words have no letter matches and are antigrams."
  #       end
  #     end
  #   else
  #     final_answer = "You need to input actual words"
  #   end
  #   final_answer
  # end
end
