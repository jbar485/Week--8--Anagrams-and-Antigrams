#!/usr/bin/env ruby
require 'tty-font'
require 'pastel'
require 'rainbow'
require 'io/console'
require ('./lib/ruby_logic.rb')

# frontend logic
@font = TTY::Font.new(:doom)
@font2 = TTY::Font.new(:straight)
@pastel = Pastel.new

puts Rainbow(@pastel.green(@font.write("Anagram-Antigram"))).blink
puts Rainbow(@pastel.blue(@font.write("Enter your name:")))
name_input = STDIN.noecho(&:gets).chomp
puts Rainbow(@pastel.blue(@font.write("First word:")))
word1_input = STDIN.noecho(&:gets)
puts Rainbow(@pastel.blue(@font.write("Second word:")))
word2_input = STDIN.noecho(&:gets)

anagram_game = Anagram.new(word1_input, word2_input)
puts Rainbow(@pastel.red(@font.write(name_input + " your words are:")))
final_answer = anagram_game.word_test()

puts Rainbow(@pastel.red(final_answer))
