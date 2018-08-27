character_info = {
  
  }

inventory = {
  
  
  }
  
  
character_stats = {
  @strength=> 0,
  @dexterity=> 0,
  @constitution=> 0,
  @intelligence=> 0,
  @wisdom=> 0,
  @charisma=> 0
}

race_array = {
  a: "|Human|",
  b: "|Elf|", 
  c: "|Dwarf|",
  e: "|Lizardfolk|"
  }

player_class = {
  a1: "|Fighter|",
  b1: "|Wizard|",
  c1: "|Cleric|",
  a2: "|Rogue|"
  }

def line_break
  puts
  puts
  puts
end

def prompt()
  print "> "
end

def wait
  sleep 2
end


puts "Hello, adventurer! Welcome to Fogh Pyrae."
wait


puts "We're going to get your character's name."
wait
puts "Sometimes choosing a name is difficult. If you'd like, you can use your real one and we'll mess with it a bit."
wait
puts "Let's get your first name: "
prompt; @name = gets.chomp.capitalize
puts "And your last name? "
prompt; @name_la = gets.chomp.capitalize


puts "Would you like us to make it into a fantasy name? (Y/N)"
prompt; @fan_name = gets.chomp.downcase
if @fan_name.include? "y"
    @fan_name1 = @name.downcase.reverse.capitalize
    @fan_name_la = @name_la.downcase.reverse.capitalize
    @name = @fan_name1
    @name_la = @fan_name_la
else
    puts "Alright, we won't make any changes."
    wait
    line_break
end

loop do
  puts "So, your name is #{@name} #{@name_la}? (Y/N)"
  prompt; name_confirmation = gets.chomp.downcase
  if name_confirmation.include? "y"
    line_break
    break
  else
    puts "Let's get your first name: "
    prompt; @name = gets.chomp.capitalize
    puts "And your last name? "
    prompt; @name_la = gets.chomp.capitalize
    line_break


    puts "Would you like to make it a fantasy name? (Y/N)"
    prompt; @fan_name = gets.chomp.downcase
    if @fan_name.include? "y"
      @fan_name1 = @name.downcase.reverse.capitalize
      @fan_name_la = @name_la.downcase.reverse.capitalize
      @name = @fan_name1
      @name_la = @fan_name_la
    else
      puts "Alright, we won't make any changes."
      wait
      line_break
    end

    line_break

    character_info["name"] = "#{@name}"
    character_info["name_la"] = "#{@name_la}"
  end
end

character_info["name"] = "#{@name}"
character_info["name_la"] = "#{@name_la}"

puts character_info

class String
  def toJadenCase
   split(" ").map{|x| x.capitalize}.join(" ")
  end
end



puts "Alright, #{@name}, here are the races: "
line_break
wait
race_array.each { |key, value| print value + " " }
wait
line_break



puts "Would you like a description of each before you choose? (Y/N)"
prompt; info = gets.chomp.downcase
if info.include? "y"
  line_break
  puts "Humans"
  puts
  puts "Humans are some of the most versatile people. They're capable of thriving 
  in almost any environment and have a wide range of interests and professions. 
  They typically stand in the 5' to 6' range and weigh between 100 to 250 pounds, though variations do occur."
  puts
  puts "Elf"
  puts
  puts "Elves are tall and slender people who almost always have an affinity for magic. 
  They're generally seen as somewhat haughty by the other races as their culture lacks most pleasantires.
  They stand around the same height as humans, though are typically slightly on the taller side, and weigh between 80 to 170 pounds."
  puts
  puts "Dwarf"
  puts
  puts "Dwarves are stout, hardy people with a high level of constitution. 
  They're typically in tune with the world around them, opposed to the imaginative humans and pensive elves.
  Dwarves stand between four and just over five feet, and, due to their dense bodies, weigh 200 to 350 pounds on avergage."
  puts
  puts "Lizardfolk"
  puts
  puts "Lizardfolk are perhaps some of the most strange and difficult to understand of the races.
  Seemingly alien, Lizardfolk are highly curious creatures, but seem to lack a sense of empathy. 
  Many make efforts to assimilate to modern society, but their way of thinking distiguishes them.
  Lizardfolk stand between six and seven feet, and weigh between 180 to 250 pounds on average."
else
  line_break
end



loop do
  puts "Which one are you?"
  prompt; @race = gets.chomp.downcase
  if @race == "human"
    character_info["race"] = "#{@race}"
    break
  elsif @race == "dwarf"
    character_info["race"] = "#{@race}"
    break
  elsif @race == "elf"
    character_info["race"] = "#{@race}"
    break
  elsif @race == "lizardfolk"
    character_info["race"] = "#{@race}"
    break
  else
    puts "Choose one of the races listed, please."
    wait
  end
end

line_break

@race = character_info["race"].toJadenCase


puts "Now it's time to choose a class."
wait
puts "Pick one from the list below."
wait
line_break
player_class.each { |key, value| print value + " " }
wait
line_break



puts "Would you like a description? (Y/N)"
prompt; info1 = gets.chomp.downcase
if info1.include? "y"
  puts "Fighter"
  puts
  puts "Fighters are physically adept warriors, capable of managing a wide arsenal of weaponry efficiently due to years of training.
  They find their way in the world as mercenaries, knights, soldiers, and other professions that showcase their physical prowess."
  puts
  puts "Wizard"
  puts
  puts "Wizards are those who have devoted their life to learning magic, and, through dedication, have began to master the world of the arcane.
  They find their place in a variety of different professions, as their magic allows for a lot of variety and utility. 
  They can be deadly combatants or outstanding civil servants."
  puts
  puts "Cleric"
  puts
  puts "Clerics are masters of divine magic, who have obtained it through a variety of sources. Clerics showcase their abilities as not only priests and healers,
  but also as holy warriors. A cleric could be a simple robed man or an armored warrior flanked by vengeful spirits brought into this world to serve him."
  puts
  puts "Rogue"
  puts
  puts "Rogues, like fighters, are very martially and physically adpet. Whereas fighters focus more on ability and strength, rogues focus lies with
  dexterity and the ability to outmaneuver their opponent. Rogues make excellent archers, rangers, thieves, trackers, and swordsmen. They have a wide variety
  of knowledge and skill that can make them nearly as versatile as a wizard."
  puts
else
  line_break
end

line_break



loop do 
  puts "Which class are you?"
  prompt; @player_class = gets.chomp.downcase
  if @player_class == "fighter"
    character_info["class"] = "#{@player_class}"
    break
  elsif @player_class == "wizard"
    character_info["class"] = "#{@player_class}"
    break
  elsif @player_class == "cleric"
    character_info["class"] = "#{@player_class}"
    break
  elsif @player_class == "rogue"
    character_info["class"] = "#{@player_class}"
    break
  else
    puts "Choose one of the classes provided, please."
    wait
  end
end

line_break

@player_class = @player_class.toJadenCase


puts "Alright, #{@name} #{@name_la} the #{@race} #{@player_class}. Let's get your adventure started."

load "adventure.rb"