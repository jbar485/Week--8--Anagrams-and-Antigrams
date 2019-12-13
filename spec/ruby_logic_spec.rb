require ('rspec')
require ('pry')
require ('ruby_logic')

describe('Word#word_test') do

  it('will return a message telling user it is an anagram') do
    anagram = Word.new("ruby", "bury")
    expect(anagram.word_test).to(eq("These words are anagrams."))
  end

  it('will return a message telling user it is an anagram no matter the casing') do
    anagram = Word.new("Ruby", "bUry")
    expect(anagram.word_test).to(eq("These words are anagrams."))
  end

  it('will return a message telling user they need to enter a real word') do
    vowel = Word.new("rrrb", "bUry")
    expect(vowel.word_test).to(eq("You need to input actual words!"))
  end

end
