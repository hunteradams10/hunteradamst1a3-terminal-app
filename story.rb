# frozen_string_literal: true
begin
require_relative './classes'
rescue 
    puts "File does not exist. Please make sure you have the file and the correct permissions."
end

begin
require 'tty-prompt'
require 'colorize'
require 'tty-font'
require 'tty-box'

rescue LoadError => load_error
    puts "You have an error: #{load_error}. Please make sure you have the necessary gems installed."
    puts ' '
end

font = TTY::Font.new(:standard)

prompt = TTY::Prompt.new
prompt_wolf = TTY::Prompt.new

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

# puts ' '

# puts '#############################################################################################'
# puts ' '
# puts 'WELCOME'.cyan
# puts ' '
# puts '#############################################################################################'

# sleep(2)

# print TTY::Box.frame { 'CHAPTER ONE                                                                 ' }

# puts ' '
# puts ' '
# CharTiming.slow("Hello, #{name}. You must be exhausted, but I can see that you're #{mood}. ", 0.08)
# puts ' '
# CharTiming.slow("Maybe just sit here for a while and take it in -- look, the weather is #{weather}, ", 0.08)
# CharTiming.slow("and you don't have to do anything right now. Remember #{pet}? What a lovely creature. ", 0.08)
# puts ' '
# CharTiming.slow("Don't get stressed. Just sit still and think really hard about #{favourite_thing}. ", 0.08)

# puts ' '
# puts ' '
# CharTiming.slow('...', 1)
# puts ' '
# puts ' '
# CharTiming.slow('So...', 1)
# CharTiming.slow("the thing is... your plane went down about a day ago, you've been unconscious for a while. ", 0.08)
# puts ' '
# puts ' '
# CharTiming.slow('...', 1)
CharTiming.slow("you're the only survivor -- you're okay, though. ", 0.08)
puts ' '
puts ' '
CharTiming.slow('...', 1)

loop do
  CharTiming.slow("are you okay? (Y/N or help) \n".light_blue, 0.08)
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
  when "help"
    help_ruok = File.open("help_ruok.txt")
    puts help_ruok.read
  else
    puts "Invalid input, type 'Y', 'N' or 'help'".red
    puts ' '
  end
end

# puts ' '

# CharTiming.slow("... looks like it's about to rain. Better get moving. ", 0.08)
# puts ' '
# CharTiming.slow('Take a quick look around before you go; you might find something useful. ', 0.08)
# puts ' '
# puts ' '
# CharTiming.slow(
#   'You look around the sandy shoreline and discover a pineapple, a photo of your loved one, and a ring. '.italic, 0.08
# )
# puts ' '
# puts ' '
# sleep 2
# CharTiming.slow('Unfortunately, you can only take one item. Choose wisely.', 0.08)
# puts ' '
# puts ' '

# choice = prompt.select('What will you take? Select with ↑/↓ arrow keys, then Enter') do |option|
#   option.choice 'Pineapple'
#   option.choice 'Photo'
#   option.choice 'Ring'
# end

# case choice
# when 'Pineapple'
#   puts ' '
#   puts 'A pineapple! A delicious, non-sentimental choice.'
#   puts ' '
# when 'Photo'
#   puts ' '
#   puts 'A photo is a good way to feel close to loved ones when we are far away.'
#   puts ' '
# when 'Ring'
#   puts ' '
#   puts 'This ring might be valuable when you get out of here.'
#   puts ' '
# end

# chosen_item = choice

# CharTiming.slow("You hug your #{chosen_item} to you, and make your way into the jungle ahead ".italic, 0.08)
# CharTiming.slow('and the rain begins to fall. '.italic, 0.08)
# CharTiming.slow('You run into the forest and a small stroke of fear creeps up your spine, '.italic, 0.08)
# CharTiming.slow('but you manage to take shelter under a tree, and the rain stops buffeting you.'.italic, 0.08)
# sleep 3
# puts ' '
# puts ' '
# CharTiming.slow("... there's a low growling nearby. Beside you, about a meter away, is a wolf. ".italic, 0.08)
# puts ' '
# puts ' '
# CharTiming.slow('... a presumably hungry wolf.'.italic, 0.08)
# puts ' '
# puts ' '
# CharTiming.slow("Okay, don't stress. You have full health. ".italic, 0.08)
# puts ' '
# puts ' '
# puts ' '
# puts "HP: #{hp.to_s.green.bold}"
# puts ' '
# puts ' '
# begin
# choice = prompt.select('What will you do?') do |option|
#   option.choice 'a) Reason with the wolf! (30% chance)'
#   option.choice 'b) Attack the wolf!! (40% chance)'
#   option.choice 'c) Climb the tree! (50% chance)'
#   option.choice 'd) exit program'
# end
# rescue StandardError => error
#     puts "an unknown error occured. Please restart the program.".red
#     puts error.inspect
# end
# case choice
# when 'a) Reason with the wolf! (30% chance)'
#   number = rand(1..100)
#   if number <= 30
#     puts 'Success!'.green
#     CharTiming.slow('You tell the wolf your story, and it is moved. It stops growling, ', 0.08)
#     CharTiming.slow('and listens intently. ', 0.08)
#     CharTiming.slow("'That's the saddest story I have ever heard.' ", 0.08)
#     CharTiming.slow('says the wolf. ', 0.08)
#     CharTiming.slow('It can talk!!'.cyan, 0.08)
#   elsif number > 30
#     puts 'Unsuccessful'.light_red
#     CharTiming.slow('The wolf growls and launches itself at you! ', 0.08)
#     hp = 80
#     CharTiming.slow("Lost 20HP. Your HP is now #{hp.to_s.bold.green}.\n", 0.08)
#     CharTiming.slow("'Bad luck,', says the wolf, 'but brave for trying.' ", 0.08)
#     CharTiming.slow('It can talk!!'.bold.cyan, 0.08)
#   end
# when 'b) Attack the wolf!! (40% chance)'
#   number = rand(1..100)
#   if number <= 40
#     puts 'Success!'.green
#     CharTiming.slow('You wind up and punch the wolf square in the face. It whimpers ', 0.08)
#     CharTiming.slow('and steps back.', 0.08)
#     CharTiming.slow("'There's no need for violence!' it howls, 'growling is a force of habit!' ", 0.08)
#     CharTiming.slow('It can talk!!'.cyan, 0.08)
#   elsif number > 40
#     puts 'Unsuccessful'.light_red
#     CharTiming.slow('The wolf growls and launches itself at you! ', 0.08)
#     hp = 80
#     CharTiming.slow("Lost 20HP. Your HP is now #{hp.to_s.bold.green}.\n", 0.08)
#     CharTiming.slow("'Bad luck,', says the wolf, 'but brave for trying.' ", 0.08)
#     CharTiming.slow('It can talk!!'.bold.cyan, 0.08)
#   end
# when 'c) Climb the tree! (50% chance)'
#   number = rand(1..100)
#   if number <= 50
#     puts 'Success!'.green
#     CharTiming.slow('You turn and scramble up the tree you were taking shelter under. ', 0.08)
#     CharTiming.slow('The wolf approaches the trunk and gazes up at you. ', 0.08)
#     CharTiming.slow("'Hmm. Smart.' says the wolf. ", 0.08)
#     CharTiming.slow('It can talk!!'.cyan, 0.08)
#   elsif number > 40
#     puts 'Unsuccessful'.light_red
#     CharTiming.slow('The wolf growls and launches itself at you! ', 0.08)
#     hp = 80
#     CharTiming.slow("Lost 20HP. Your HP is now #{hp.to_s.bold.green}.\n", 0.08)
#     CharTiming.slow("'Bad luck,', says the wolf, 'but brave for trying.' ", 0.08)
#     CharTiming.slow('It can talk!!'.bold.cyan, 0.08)
#   end
# end
# puts ' '
# puts ' '
# CharTiming.slow("'You didn't need to freak out', says the wolf, 'I haven't ", 0.08)
# CharTiming.slow("seen anyone here for a long time. You can't be here on purpose. ", 0.08)
# CharTiming.slow("Lucky for you I'm not as mean as I look. I'll help you get out...", 0.08)
# CharTiming.slow("if you have a pineapple.'", 0.08)
# puts ' '
# puts ' '
# if chosen_item == "Pineapple"
#     CharTiming.slow("You show him your pineapple, and he takes it with glee. ".italic, 0.08)
#     CharTiming.slow("'Fantastic! These are my favourite.' ", 0.08)
#     CharTiming.slow("he looks around, ".italic, 0.08)
#     CharTiming.slow("'Hmm...' ", 0.08)
#     CharTiming.slow("He sniffs the air. ".italic, 0.08)
# else 
#     CharTiming.slow("You shake your head and tell him that you have only ".italic, 0.08)
#     CharTiming.slow("your #{chosen_item}. He clicks his tongue and shrugs. ".italic, 0.08)
#     CharTiming.slow("'What am I supposed to do with a #{chosen_item}? Oh well, ", 0.08)
#     CharTiming.slow("it was worth a shot. Don't worry, I'll still help you.' ", 0.08)
#     CharTiming.slow("He sniffs the air. ".italic, 0.08)
# end

# CharTiming.slow("'We'd better get going. I'll show you to where you need to go.' ", 0.08)