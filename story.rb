#!/usr/bin/env ruby


# frozen_string_literal: true

begin
  require_relative './classes'
rescue StandardError
  puts 'File does not exist. Please make sure you have the file and the correct permissions.'
end

begin
  require 'tty-prompt'
  require 'colorize'
  require 'tty-font'
  require 'tty-box'
rescue LoadError => e
  puts "You have an error: #{e}. Please make sure you have the necessary gems installed."
  puts ' '
end

font = TTY::Font.new(:standard)

prompt = TTY::Prompt.new
prompt_wolf = TTY::Prompt.new

hp = 100
scary_wolf = Wolf.new

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
the_end = Pastel.new
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
CharTiming.slow('Maybe just sit here for a while and take it in -- ', 0.08)
CharTiming.slow("look, the weather is #{weather}, ", 0.08)
CharTiming.slow("and you don't have to do anything right now. ", 0.08)
CharTiming.slow("Remember #{pet}? What a lovely creature. ", 0.08)
puts ' '
CharTiming.slow("Don't get stressed. Just sit still and think really ", 0.08)
CharTiming.slow("hard about #{favourite_thing}. ", 0.08)

puts ' '
puts ' '
CharTiming.slow('...', 1)
puts ' '
puts ' '
CharTiming.slow('So...', 1)
CharTiming.slow("the thing is... your plane went down about a day ago, you've been ", 0.08)
CharTiming.slow('unconscious for a while. ', 0.08)
puts ' '
puts ' '
CharTiming.slow('...', 1)
CharTiming.slow("you're the only survivor -- you're okay, though. ", 0.08)
puts ' '
puts ' '
CharTiming.slow('...', 1)

loop do
  CharTiming.slow("are you okay? (Y/N, help or exit) \n".light_blue, 0.08)
  if_okay = $stdin.gets.chomp.downcase
  puts ' '
  case if_okay
  when 'y'
    CharTiming.slow('I knew it! Thank goodness for that, ', 0.08)
    CharTiming.slow("because you have to get out of here. \n", 0.08)
    break
  when 'n'
    CharTiming.slow("I'm sorry to hear that... but you don't ", 0.08)
    CharTiming.slow("have time to feel bad, I'm afraid. ", 0.08)
    CharTiming.slow("You have to get out of here. \n", 0.08)
    break
  when 'help'
    help_ruok = File.open('help_ruok.txt')
    puts help_ruok.read
  when 'exit'
    exit_program
  else
    puts "Invalid input, type 'Y', 'N', 'help', or 'exit'".red
    puts ' '
  end
end

puts ' '

CharTiming.slow("... looks like it's about to rain. Better get moving. ", 0.08)
puts ' '
puts ' '
CharTiming.slow('Take a quick look around before you go; you ', 0.08)
CharTiming.slow('might find something useful. ', 0.08)
puts ' '
puts ' '
CharTiming.slow('You look around the sandy shoreline and discover a pineapple, '.italic, 0.08)
CharTiming.slow('a photo of your loved one, and a ring. '.italic, 0.08)
puts ' '
puts ' '
sleep 2
CharTiming.slow('Unfortunately, you can only take one item. Choose wisely.', 0.08)
puts ' '
puts ' '

choice = prompt.select('What will you take? Select with ↑/↓ arrow keys, then Enter') do |option|
  option.choice 'Pineapple'
  option.choice 'Photo'
  option.choice 'Ring'
  option.choice 'exit'
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
when 'exit'
  exit_program
end

chosen_item = choice

CharTiming.slow("You hug your #{chosen_item} to you, and make your way into the jungle ahead ".italic, 0.08)
puts ' '
CharTiming.slow('and the rain begins to fall. '.italic, 0.08)
puts ' '
CharTiming.slow('You run into the forest and a small stroke of fear creeps up your spine, '.italic, 0.08)
puts ' '
CharTiming.slow('but you manage to take shelter under a tree, and the rain stops buffeting you.'.italic, 0.08)
sleep 3
puts ' '
puts ' '
puts scary_wolf.growl
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
begin
  choice = prompt.select('What will you do?') do |option|
    option.choice 'a) Reason with the wolf! (30% chance)'
    option.choice 'b) Attack the wolf!! (40% chance)'
    option.choice 'c) Climb the tree! (50% chance)'
    option.choice 'd) exit'
  end
rescue StandardError => e
  puts 'an unknown error occured. Please restart the program.'.red
end
case choice
when 'a) Reason with the wolf! (30% chance)'
  number = rand(1..100)
  if number <= 30
    puts 'Success!'.green
    CharTiming.slow('You tell the wolf your story, and it is moved. It stops growling, ', 0.08)
    puts ' '
    CharTiming.slow('and listens intently. ', 0.08)
    puts ' '
    CharTiming.slow("'That's the saddest story I have ever heard.' ", 0.08)
    CharTiming.slow('says the wolf. ', 0.08)
    CharTiming.slow('It can talk!!'.cyan, 0.08)
  elsif number > 30
    puts 'Unsuccessful'.light_red
    CharTiming.slow('The wolf growls and launches itself at you! ', 0.08)
    hp = Calculator.subtract(hp, 20)
    CharTiming.slow("Lost 20HP. Your HP is now #{hp.to_s.green}.\n", 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'Bad luck,', says the wolf, 'but brave for trying.' ", 0.08)
    CharTiming.slow('It can talk!!'.bold.cyan, 0.08)
  end
when 'b) Attack the wolf!! (40% chance)'
  number = rand(1..100)
  if number <= 40
    puts 'Success!'.green
    CharTiming.slow('You wind up and punch the wolf square ', 0.08)
    CharTiming.slow('in the face. It whimpers ', 0.08)
    CharTiming.slow('and steps back.', 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'There's no need for violence!' it howls, ", 0.08)
    CharTiming.slow("'growling is a force of habit!' ", 0.08)
    CharTiming.slow('It can talk!!'.cyan, 0.08)
  elsif number > 40
    puts 'Unsuccessful'.light_red
    CharTiming.slow('The wolf growls and launches itself at you! ', 0.08)
    hp = Calculator.subtract(hp, 20)
    CharTiming.slow("Lost 20HP. Your HP is now #{hp.to_s.green}.\n", 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'Bad luck,', says the wolf, 'but brave for trying.' ", 0.08)
    CharTiming.slow('It can talk!!'.bold.cyan, 0.08)
  end
when 'c) Climb the tree! (50% chance)'
  number = rand(1..100)
  if number <= 50
    puts ' '
    puts 'Success!'.green
    puts ' '
    CharTiming.slow('You turn and scramble up the tree you were taking shelter under. ', 0.08)
    CharTiming.slow('The wolf approaches the trunk and gazes up at you. ', 0.08)
    CharTiming.slow("'Hmm. Smart.' says the wolf. ", 0.08)
    CharTiming.slow('It can talk!!'.cyan, 0.08)
  elsif number > 40
    puts ' '
    puts 'Unsuccessful'.light_red
    puts ' '
    CharTiming.slow('The wolf growls and launches itself at you! ', 0.08)
    hp = Calculator.subtract(hp, 20)
    CharTiming.slow("Lost 20HP. Your HP is now #{hp.to_s.green}.\n", 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'Bad luck,', says the wolf, 'but brave for trying.' ", 0.08)
    CharTiming.slow('It can talk!!'.bold.cyan, 0.08)
  end
when 'd) exit'
  exit_program
end
puts ' '
puts ' '
CharTiming.slow("'You didn't need to freak out', says the wolf, 'I haven't ", 0.08)
puts ' '
CharTiming.slow("seen anyone here for a long time. You can't be here on purpose. ", 0.08)
puts ' '
CharTiming.slow("Lucky for you I'm not as mean as I look. I'll help you get out...", 0.08)
puts ' '
CharTiming.slow("if you have a pineapple.'", 0.08)
puts ' '
puts ' '
if chosen_item == 'Pineapple'
  CharTiming.slow('You show him your pineapple, and he takes it with glee. '.italic, 0.08)
  puts ' '
  CharTiming.slow("'Fantastic! These are my favourite.' ", 0.08)
  puts ' '
  CharTiming.slow('He looks around, '.italic, 0.08)
  puts ' '
  CharTiming.slow("'Hmm...' ", 0.08)
else
  CharTiming.slow('You shake your head and tell him that you have only '.italic, 0.08)
  CharTiming.slow("your #{chosen_item}. He clicks his tongue and shrugs. ".italic, 0.08)
  CharTiming.slow("'What am I supposed to do with a #{chosen_item}? Oh well, ", 0.08)
  CharTiming.slow("it was worth a shot. Don't worry, I'll still help you.' ", 0.08)
end
puts ' '
CharTiming.slow('He sniffs the air. '.italic, 0.08)
puts ' '
CharTiming.slow("'We'd better get going. I'll show you to where you need to go.' ", 0.08)
puts ' '
puts ' '
CharTiming.slow('Well, this is good news! The wolf has agreed to help you!', 0.08)
puts ' '
puts ' '
CharTiming.slow('You follow the wolf through the dense understory and eventually '.italic, 0.08)
puts ' '
CharTiming.slow('you find yourself standing in front of a large temple.'.italic, 0.08)
puts ' '
CharTiming.slow("'The key to getting out of here is inside this temple,' ", 0.08)
CharTiming.slow('he says, '.italic, 0.08)
puts ' '
CharTiming.slow("'the problem is, it's guarded by a very slippery snake.'", 0.08)
puts ' '
puts ' '
CharTiming.slow('You smile at him disbelivingly. '.italic, 0.08)
puts ' '
puts ' '
CharTiming.slow("'I know you think I'm joking, but sadly I'm not.'", 0.08)
puts ' '
puts ' '
CharTiming.slow("'Did ssssssomeone mention a sssssslippery ssssnake?'", 0.08)
puts ' '
puts ' '
CharTiming.slow('At the door appears a bright yellow cobra. He is wearing a big, hissing smile.'.italic, 0.08)
puts ' '
puts ' '
CharTiming.slow("'I will allow you into the temple. But firsssst you musssst ", 0.08)
CharTiming.slow("anssswer three riddlessss. I love riddlesssss.'", 0.08)
puts ' '
puts ' '
CharTiming.slow("'Here is the firssssst:'", 0.08)
puts ' '
puts ' '
puts "'I have cities but no houses; I have mountains but no trees. I have ".blue
puts "water, but no fish. What am I?'".blue
puts ' '
puts ' '

loop do
  begin
    choice = prompt.select('What is the answer?') do |option|
      option.choice 'A dream'
      option.choice 'A map'
      option.choice 'A drawing'
      option.choice 'Ask the wolf'
      option.choice 'Ask the snake'
      option.choice 'exit program'
    end
  rescue StandardError => e
    puts 'an unknown error occured. Please restart the program.'.red
  end

  case choice
  when 'A dream'
    puts ' '
    CharTiming.slow('Incorrect! '.red, 0.08)
    hp = Calculator.subtract(hp, 30)
    puts ' '
    puts ' '
    CharTiming.slow("Lost 30HP. Your HP is now #{hp.to_s.red}.\n", 0.08)
    puts ' '
    CharTiming.slow("'The ansssswer is a map!' ", 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'Too bad. Here is the ssssecond riddle: ", 0.08)
    puts ' '
    puts ' '
    break
  when 'A map'
    puts ' '
    puts ' '
    CharTiming.slow('Correct!'.green, 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'Well done. Here is the sssssecond riddle: ", 0.08)
    puts ' '
    puts ' '
    break
  when 'A drawing'
    puts ' '
    CharTiming.slow('Incorrect!'.red, 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("Lost 30HP. Your HP is now #{Calculator.subtract(hp, 30).to_s.red}.\n", 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'The ansssswer is a map!' ", 0.08)
    puts ' '
    puts ' '
    CharTiming.slow("'Too bad. Here is the ssssecond riddle: ", 0.08)
    puts ' '
    puts ' '
    break
  when 'Ask the wolf'
    puts ' '
    puts ' '
    if chosen_item == 'Pineapple'
      CharTiming.slow("'I'm going to help you this one ", 0.08)
      CharTiming.slow('time because you gave me a pineapple. ', 0.08)
      CharTiming.slow("The answer is a map, friend.' ", 0.08)
    else
      CharTiming.slow("'Sorry bud, no pineapple, no help. For reals this time.' ", 0.08)
    end
    puts ' '
    puts ' '
  when 'Ask the snake'
    puts ' '
    puts ' '
    if chosen_item == 'Photo'
      CharTiming.slow("'I will need sssssome sort of proof that you ", 0.08)
      CharTiming.slow("have a reasssson to be in my temple.' ", 0.08)
      puts ' '
      puts ' '
      CharTiming.slow("You take out your #{chosen_item} and show him ".italic, 0.08)
      CharTiming.slow('that someone is missing you back home.'.italic, 0.08)
      puts ' '
      puts ' '
      CharTiming.slow("'Ssssso sssssweet. Very well, I will give you the ", 0.08)
      CharTiming.slow('ansssswer, thissss one time. It issss a map. ', 0.08)
    else
      CharTiming.slow("'If only you had sssssome proof that you have a ", 0.08)
      CharTiming.slow('reassssson to be in my temple. I will not give you ', 0.08)
      CharTiming.slow("the ansssswer.' ", 0.08)
    end
    puts ' '
    puts ' '
  when 'exit program'
    exit_program
  end
end

puts "'What word in the English language does the following: ".blue
puts 'The first two letters signify a man, the first three '.blue
puts 'letters signify a woman, the first four letters signify '.blue
puts 'a great man, while the entire word signifies a great woman. '.blue
puts ' '
puts ' '
puts 'What is the word? (Type in one word, or exit, then push Enter)'.cyan

user_word = $stdin.gets.chomp.downcase

case user_word
when 'heroine'
  puts ' '
  puts ' '
  CharTiming.slow('Correct! '.green, 0.08)
  puts ' '
  puts ' '
  CharTiming.slow('Well done. Here isss the last one: ', 0.08)
  puts ' '
  puts ' '
when 'exit'
  exit_program
else
  puts ' '
  puts ' '
  CharTiming.slow('Incorrect!'.red, 0.08)
  hp = Calculator.subtract(hp, 10)
  puts ' '
  puts ' '
  CharTiming.slow("Lost 10HP. Your HP is now #{hp.to_s.red}.\n", 0.08)
  puts ' '
  puts ' '
  puts ' '
  CharTiming.slow("'Too bad. The anssswer is 'heroine'. ", 0.08)
  CharTiming.slow("Here isss the final riddle:' ", 0.08)
  puts ' '
  puts ' '
end

puts "What disappears as soon as you say its name? Type one word, or 'exit' and push Enter.".blue
user_word = $stdin.gets.chomp.downcase

case user_word
when 'silence'
  puts ' '
  puts ' '
  CharTiming.slow('Correct! '.green, 0.08)
  puts ' '
  puts ' '
  CharTiming.slow("'Well done, you are a smart one.", 0.08)
  puts ' '
  puts ' '
when 'exit'
  exit_program
else
  puts ' '
  puts ' '
  CharTiming.slow('Incorrect!'.red, 0.08)
  hp = Calculator.subtract(hp, 10)
  puts ' '
  puts ' '
  CharTiming.slow("Lost 10HP. Your HP is now #{hp.to_s.red}.\n", 0.08)
  puts ' '
  puts ' '
  puts ' '
  CharTiming.slow("'Too bad. The anssswer is 'silence'. ", 0.08)
  CharTiming.slow("'That wassss fun for me. ", 0.08)
  puts ' '
  puts ' '
end

CharTiming.slow("Very well. You may enter the temple. Good luck.'", 0.08)
puts ' '
puts ' '
CharTiming.slow('You enter the temple after the stone door rolls away with a grumble. '.italic, 0.08)
puts ' '
CharTiming.slow('Inside is a small floating orb upon a pedestal, and the wolf '.italic, 0.08)
puts ' '
CharTiming.slow('informs you that this is your ticket home. '.italic, 0.08)
puts ' '
CharTiming.slow('You step cautiously up to the orb and touch it. It fills you with healing energy. '.italic, 0.08)
puts ' '
puts ' '
hp = Calculator.add(0, 100)
puts ' '
puts ' '
puts "HP: #{hp.to_s.green}."
puts ' '
puts ' '
CharTiming.slow("'That's better,' ", 0.08)
CharTiming.slow('says the wolf, '.italic, 0.08)
CharTiming.slow("'you're free to go now. ", 0.08)
puts ' '
puts ' '
choice = prompt.select('Do you have anything else to say to the wolf?') do |option|
  option.choice 'Pat the wolf'
  option.choice 'Talk to the wolf'
  option.choice 'Attack the wolf!'
  option.choice 'exit program'
end

case choice
when 'Pat the wolf'
  puts ' '
  puts ' '
  puts scary_wolf.pur
  puts ' '
  puts ' '
when 'Talk to the wolf'
  puts ' '
  puts ' '
  puts scary_wolf.talk
  puts ' '
  puts ' '
when 'Attack the wolf!'
  puts ' '
  puts ' '
  puts scary_wolf.growl
  puts ' '
  puts ' '
end

CharTiming.slow("Well done, #{name}. Time to go home.", 0.08)
puts ' '
puts ' '
CharTiming.slow("You're suddenly transported back home, with #{pet} beside you and ".italic, 0.08)
CharTiming.slow("you're both surrounded by #{favourite_thing}. You're home safe, ".italic, 0.08)
CharTiming.slow("and you're about to tell #{pet} quite a story. ".italic, 0.08)
puts ' '
puts ' '
puts the_end.red(font.write('The End'))
