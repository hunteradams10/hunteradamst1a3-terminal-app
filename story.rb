# frozen_string_literal: true

require 'tty-prompt'
require 'colorize'
require 'tty-font'
require 'tty-prompt'

font = TTY::Font.new(:standard)

name = 'stranger'
favourite_thing = 'nothing'
weather = 'sunny'
mood = 'confused'
pet = 'Goblin'

name = ARGV[0] if ARGV[0]
favourite_thing = ARGV[1].capitalize if ARGV[1]
weather = ARGV[2] if ARGV[2]
mood = ARGV[3] if ARGV[3]
pet = ARGV[4].capitalize if ARGV[4]

pastel = Pastel.new
puts pastel.red(font.write('Temple  Island'))

puts ' '

puts '#############################################################################################'
puts ' '
puts 'CHAPTER ONE'.cyan
puts ' '
puts '#############################################################################################'

puts " "

puts "Hello, #{name}. You must be exhausted, but I can see that you're #{mood}."
puts "Maybe just sit here for a while and take it in; the weather is #{weather},"
puts "and you don't have to do anything right now. You certainly don't have to worry about #{pet}."
puts "Just sit still and think really hard about #{favourite_thing}."

puts ' '
puts ' '

puts "So, the thing is... your plane went down about a day ago, you've been unconscious for a while."
puts "... you're the only survivor -- you're okay, though."
puts "..."

loop do
    puts "... are you okay? (Y/N)"
    if_okay = STDIN.gets.chomp.downcase
if if_okay == "y"
    puts " "
    puts "I knew it! Thank goodness for that, because you have to get out of here."
    break
elsif if_okay == "n"
    puts " "
    puts "I'm sorry to hear that... but you don't have time to feel bad, I'm afraid."
    puts "You have to get out of here."
    break
else 
    puts " "
    puts "Invalid input, type 'Y' or 'N'".red
    puts " "
end
end
