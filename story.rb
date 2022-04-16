# frozen_string_literal: true

require_relative './classes'

require 'tty-prompt'
require 'colorize'
require 'tty-font'
require 'tty-box'

font = TTY::Font.new(:standard)

prompt = TTY::Prompt.new

name = 'stranger'
favourite_thing = 'nothing'
weather = 'sunny'
mood = 'confused'
pet = 'Goblin'

hp = 100

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
puts 'WELCOME'.cyan
puts ' '
puts '#############################################################################################'

sleep(2)

print TTY::Box.frame { 'CHAPTER ONE                                                                 ' }

puts ' '
puts ' '
CharTiming.slow("Hello, #{name}. You must be exhausted, but I can see that you're #{mood}. ", 0.08)
puts ' '
CharTiming.slow("Maybe just sit here for a while and take it in -- look, the weather is #{weather}, ", 0.08)
CharTiming.slow("and you don't have to do anything right now. Remember #{pet}? What a lovely creature. ", 0.08)
puts ' '
CharTiming.slow("Don't get stressed. Just sit still and think really hard about #{favourite_thing}. ", 0.08)

puts ' '
puts ' '
CharTiming.slow('...', 1)
puts ' '
puts ' '
CharTiming.slow('So...', 1)
CharTiming.slow("the thing is... your plane went down about a day ago, you've been unconscious for a while. ", 0.08)
puts ' '
puts ' '
CharTiming.slow('...', 1)
CharTiming.slow("you're the only survivor -- you're okay, though. ", 0.08)
puts ' '
puts ' '
CharTiming.slow('...', 1)

loop do
  CharTiming.slow("are you okay? (Y/N) \n".light_blue, 0.08)
  if_okay = $stdin.gets.chomp.downcase
  puts ' '
  case if_okay
  when 'y'
    CharTiming.slow("I knew it! Thank goodness for that, because you have to get out of here. \n", 0.08)
    break
  when 'n'
    CharTiming.slow("I'm sorry to hear that... but you don't have time to feel bad, I'm afraid. ", 0.08)
    CharTiming.slow("You have to get out of here. \n", 0.08)
    break
  else
    puts "Invalid input, type 'Y' or 'N'".red
    puts ' '
  end
end

puts ' '

CharTiming.slow("... looks like it's about to rain. Better get moving. ", 0.08)
puts ' '
CharTiming.slow('Take a quick look around before you go; you might find something useful. ', 0.08)
puts ' '
puts ' '
CharTiming.slow(
  'You look around the sandy shoreline and discover a pineapple, a photo of your loved one, and a ring. '.italic, 0.08
)
puts ' '
puts ' '
sleep 2
CharTiming.slow('Unfortunately, you can only take one item. Choose wisely.', 0.08)
puts ' '
puts ' '

choice = prompt.select('What will you take?') do |option|
  option.choice 'Pineapple'
  option.choice 'Photo'
  option.choice 'Ring'
end

case choice
when 'Pineapple'
  puts ' '
  puts 'A pineapple! A delicious, non-sentimental choice.'
  puts ' '
when 'Photo'
  puts ' '
  puts 'A photo is a good way to feel close to loved ones when we are far away.'
  puts ' '
when 'Ring'
  puts ' '
  puts 'This ring might be valuable when you get out of here.'
  puts ' '
end

chosen_item = choice

CharTiming.slow("You hug your #{chosen_item} to you, and make your way into the jungle ahead ".italic, 0.08)
CharTiming.slow('and the rain begins to fall. '.italic, 0.08)
CharTiming.slow('You run into the forest and a small stroke of fear creeps up your spine, '.italic, 0.08)
CharTiming.slow('but you manage to take shelter under a tree, and the rain stops buffeting you.'.italic, 0.08)
sleep 3
puts ' '
puts ' '
CharTiming.slow("... there's a low growling nearby. Beside you, about a meter away, is a wolf. ".italic, 0.08)
puts ' '
puts ' '
CharTiming.slow('... a presumably hungry wolf.'.italic, 0.08)
puts ' '
puts ' '
CharTiming.slow("Okay, don't stress. You have full health. ".italic, 0.08)
puts ' '
puts ' '
puts ' '
puts "HP: #{hp.to_s.green.bold}"
puts ' '
puts ' '
puts 'What do you want to do?'
puts ' '
