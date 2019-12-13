require ('rspec')
require ('pry')
require ('ruby_logic')

describe('Anagram#word_test') do

  it('will return a message telling user it is an anagram') do
    anagram = Anagram.new("ruby", "bury")
    expect(anagram.word_test).to(eq("These words are anagrams."))
  end

  it('will return a message telling user it is an anagram no matter the casing') do
    anagram = Anagram.new("Ruby", "bUry")
    expect(anagram.word_test).to(eq("These words are anagrams."))
  end

  it('will return a message telling user they need to enter a real word') do
    vowel_finder = Anagram.new("rurb", "brrp")
    expect(vowel_finder.word_test).to(eq("You need to input actual words"))
  end

  it('will return a message telling the user it is not an anagram but a antigram') do
    antigram = Anagram.new("abcd", "efgh")
    expect(antigram.word_test).to(eq("These words have no letter matches and are antigrams."))
  end

  it('will return a message telling the user it is not an anagram or a antigram') do
    nothing = Anagram.new("cool", "pool")
    expect(nothing.word_test).to(eq("You have two words that are neither anagrams or antigrams"))
  end

end
