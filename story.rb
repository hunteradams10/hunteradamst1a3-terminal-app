# frozen_string_literal: true

require_relative './classes'

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

name = ARGV[0].capitalize if ARGV[0]
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

sleep(2)

puts " "
puts " "
CharTiming.slow("Hello, #{name}. You must be exhausted, but I can see that you're #{mood}. ", 0.02)
puts " "
CharTiming.slow("Maybe just sit here for a while and take it in -- look, the weather is #{weather}, ", 0.02)
CharTiming.slow("and you don't have to do anything right now. Remember #{pet}? What a lovely creature. ", 0.02)
    puts " "
CharTiming.slow("Don't get stressed. Just sit still and think really hard about #{favourite_thing}. ", 0.02)

puts ' '
puts ' '
CharTiming.slow("...", 1)
puts " "
puts " "
CharTiming.slow("So...", 1) 
CharTiming.slow("the thing is... your plane went down about a day ago, you've been unconscious for a while. ", 0.08)
puts " "
puts " "
CharTiming.slow("...", 1)
CharTiming.slow("you're the only survivor -- you're okay, though. ", 0.08)
puts " "
puts " "
CharTiming.slow("...".light_blue, 1)


loop do
    CharTiming.slow("are you okay? (Y/N) \n".light_blue, 0.08)
    if_okay = STDIN.gets.chomp.downcase
if if_okay == "y"
    puts " "
    CharTiming.slow("I knew it! Thank goodness for that, because you have to get out of here. \n", 0.08)
    break
elsif if_okay == "n"
    puts " "
    CharTiming.slow("I'm sorry to hear that... but you don't have time to feel bad, I'm afraid. ", 0.08)
    CharTiming.slow("You have to get out of here. \n", 0.08)
    break
else 
    puts " "
    puts "Invalid input, type 'Y' or 'N'".red
    puts " "
end
end
