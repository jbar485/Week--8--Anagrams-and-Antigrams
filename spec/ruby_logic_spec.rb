require ('rspec')
require ('pry')
require ('ruby_logic')

describe('Word#word_test') do

  it('will return a message telling user it is an anagram') do
    anagram = Word.new("rUby", "bury")
    expect(anagram.word_test).to(eq("These words are anagrams."))
  end

end
