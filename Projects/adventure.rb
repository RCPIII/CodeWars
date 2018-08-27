require 'colorize'

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


def progress
  puts "Dead end: Still working"
end


def dead(why)
  wait
  puts "#{why}"
  wait
  puts "Congratulations."
  wait
  puts "Play again? (Y/N)"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "y"
    start
  else
    exit
  end
end


def start
  puts <<MESSAGE
  \nAfter a long journey through the mountains, you find yourself wandering slowly from the snow crested trees into a peaceful, sunkissed valley. \nThe warmth of the light caresses your skin, bringing welcome reprieve from the bitter winds you've fought through for the past several days. \nIn the distance, you hear the soft sounds of singing coming from a trickling stream. \nHowever, following this would take you off the path...
MESSAGE
  wait
  puts "Which do you choose? |Path|  |Song|"

  prompt; next_move = gets.chomp.downcase
  if next_move.include? "path"
    path
  else
    song
  end
end

def path
  puts <<MESSAGE
  \nChoosing the safe route, you decide it's best to keep on the path. Whatever adventures the stream kept weren't worth distracting from your destination. \nYou follow the path for a few miles, breaking only to eat a small lunch of travel food from your pack. \n Eventually you come across a split in the path. To the left, the sign reads "Amandir" while, to the right, the sign reads "Strika."
MESSAGE
  wait
  puts "Which path do you take? |Amandir| |Strika|"

  prompt; next_move = gets.chomp.downcase
  if next_move.include? "amandir" or next_move.include? "left"
    amandir_path
  else
    strika_path
  end
end

def amandir_path
  puts <<MESSAGE
  \nAmandir, then. You've heard of it before, though you're new to this side of the country and have never personally been. \nIt's supposed to be beautiful. Built into the mountain side with huge, carved stone walls. \nIt's one of the few remaining fortresses from the major wars, and one of the biggest cities in the country.
MESSAGE
  wait
  puts "Continue..."
  prompt; next_move = gets.chomp
  if next_move.include? "Beelzebub"
    exit
  else
    puts <<MESSAGE
    \nYou set off toward Amandir, tightening the straps on your pack and setting one foot in front of the other. \nIt's going to be a long few days, but it's worth it to be out of the woods and potentially be in a warm bed. \nYour travel is slow and steady, but overall you're making good progress without interruption. \nDuring your third day of travel, you hear the screams of a woman echoing from down off the trail. She sounds close... But Amandir is close as well, isn't it? 
MESSAGE
     wait
     puts "What would you like to do? |Investigate| |Continue|"
  
     prompt; next_move = gets.chomp.downcase
     if next_move.include? "continue" or next_move.include? "path"
       amandir
     else
       cultists
     end
  end
end

def amandir
  progress
end

def cultists
  progress
end


def strika_path
  puts <<MESSAGE
  \nYou decide on Strika. It's not as big a city, but you've been here before and have some wonderful memories. \nMore importantly, an old friend lives here who might have some insight on some magical artifacts. \nYou haven't worked with him in a while, but you secretly hope he's still in town. You set off toward Strika with fond memories in mind. From here the trip should only take a day or so of travel...
MESSAGE
  wait
  puts "Continue..."
  prompt; next_move = gets.chomp
  if next_move.include? "Beelzebub"
    exit
  else
    puts <<MESSAGE
    \nThe path so far has been uneventful, which has been a bit of a blessing. The past few weeks have been a hectic collection of varying events. \nYou're taking the time while you can to appreciate the quiet and calm of the road to Strika. \nThat is, until late the next day when a woman's scream pierces your ears... And from not far off the path. \nShe has to be close. Then again, so is Strika.
MESSAGE
    wait
    puts "What would you like to do? |Investigate| |Continue|"
    
    prompt; next_move = gets.chomp.downcase
    if next_move.include? "continue" or next_move.include? "path"
      strika
    else
      cultists
    end
  end
end

def strika
  progress
end


def song
  puts <<MESSAGE
  \nThe song reaching your ears from the stream struck you as entirely too beautiful to pass up. \nWhat kind of angel could have this voice? You slowly meander off the path toward the sound of the trickling stream, and more importantly, \nthe most beautiful song you've ever heard. As you approach, you begin to see garments thrown over tree branches. \nSurely you'll turn back and not interrupt someone's private bathing time?
MESSAGE
  wait
  puts "Do you turn back or continue forward? |Back| |Forward|"

  prompt; next_move = gets.chomp.downcase
  if next_move.include? "back"
    forest
  else
    stream
  end
end

def forest
  puts <<MESSAGE
  \nYou head into the forest, and quickly realize that, as dense as it is, it was foolish to wander off of the path and expect to easily find your way back. \nYou make your way toward what you thought was the way back, but after several hours it is entirely too apparent that you aren't going the right way. \nIt's starting to get dark, and under the heavy canopy of trees, you know you'll be unable to continue much longer. \nAt the base of a nearby cliff, you spot the entrance to a small cave. Alternatively, you could set up camp in the forest itself.
MESSAGE
  wait
  puts "Which do you choose? |Cave| |Forest|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "cave"
    cave
  else
    night_forest
  end
end

def cave
  puts <<MESSAGE
  \nSlipping quickly into the narrow mouth of the cave, you find yourself presented with a passageway barely larger than your own body. \nYou could sleep here at the mouth, though it would be extremely uncomfortable and there isn't room even for a small fire. \nFrom somewhere deeper in the cave the scent of something delicious wafts toward you, carried on the breeze. \nIt's incredibly enticing, but would lead you further into the cave. The route could potentially be treacherous.
MESSAGE
  wait
  puts "Which do you choose? |Stay here| |Go deeper|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "stay" or next_move.include? "here"
    cave_mouth
  else
    cave_innards
  end
end

def cave_innards
  puts <<MESSAGE
  \nYou're a brave soul, and pushing further into the cave isn't something you're afraid to do. You begin the decent through the narrow tunnel, which becomes more and more cramped as you go. \nRight as it reaches the point where you think you'll have to crawl, it opens up into a wide cavern. The room is lit a soft, sunny yellow. All along the walls are small, \nbioluminescent mushrooms. \nYou've seen mushrooms like this before, but never ones that so accurately depicted sunlight. Pulled from a clay oven and resting on the table are several pies set aside to cool. \nThe room has several exits, but appears to be a fully furnished bedroom and kitchen.
MESSAGE
  puts "What would you lie to do? |Take a pie| |Wander down one of the halls| |Stay put| |Turn back|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "take" or next_move.include? "pie" or next_move.include? "stay"
    cave_room
  elsif next_move.include? "wander" or next_move.include? "hall"
    cave_halls
  else
    puts "You decide its best to turn and flee the cave. As you approach the exit, you see bright beams of sunlight. You were only in the cave for a few minutes..."
    wait
    forest2
  end
end

def cave_depths
  puts <<MESSAGE
  \nWow, what a fall. You find yourself lying on your back, the soft, musky ground giving a small amount of comfort to your aching body. Glancing around, you find yourself in a deep cavern \nfilled with bioluminescent mushrooms. There are sounds of a soft chanting echoing down the corridor. Unfortunately, this also seems to be your only route of escape from this cave. \nYou stand up and brush yourself off, finding everything to be relatively undamaged.
MESSAGE

  wait
  
  puts <<MESSAGE
  \nYou creep along stealthily, the chanting growing louder as you make more progress. After several minutes, you find yourself at the top of... \nA staircase? Yes, a staircase. This is definitely manmade. You look down into the room and see several hooded figures in black robes. They're chanting in a language unknown even to you. \nLying in the middle of what appears to be a circle they've made is a figure dressed in a bronze mask and set of ornate, deep purple robes. \nHis arms cross his chest, and the steady rise and fall of his torso lets you know he's still alive. You could probably intervene... Or you could simply wait.
MESSAGE
  wait
  puts "What would you like to do? |Fireball| |Draw a weapon| |Wait|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "fire"
    puts "You conjure up all of your arcane energy and send a fireball hurdling toward the group." 
    puts "Its bright burst sets all the faces in the room toward you, but their looks of anger don't last long."
    puts "The fireball explodes at the center of the circle, and, when you're able to see again, there are several charred bodies aorund."
    puts "One figure slowly rises up from the center: the man in the bronze mask. He turns toward you."
    wait
    puts '"How dare you interrupt my ritual, mortal?" he bellows. "You will pay for your insolence."'
    puts "He outstretches one hand, in which a green, glowing staff appears."
    wait
    archmage_battle
  elsif next_move.include? "Draw" or next_move.include? "weapon"
    puts "You draw your weapon and begin the slow decent down the staircase. Sneaking up behind one of the cultists, you implant your shortsword into his back and piercing his heart."
    puts "He collapses to the ground, dead. However, the other cultists all stare at you in seeming disbelief. They all almost simutaneously raise their hands, which burst into elemental energy."
    wait
    dead("You leap toward the next cultist, sword flourishing mid-air. You lunge out and manage to catch his throat with its tip. The other quickly move into action, blasting you with arcane energy. The pain of your flesh being removed from bone is a horrendous one.")
  else
    puts <<MESSAGE
    \nYou decide it's best to wait and watch. The ritual goes off after nearly half an hour of the incantation. \nthe cultists all begin to levitate as a bright energy is torn from their mouth and eyes. \nEach beam of energy surrounds the masked man on the floor, flooding his body and lifting it up slowly. The energy disperses, and the cultists all drop to the floor. \nThe masked man continues to float for a few moments. \nIn a bright burst, an ethereal version of the man lifts from his body, where it seems to have a slight delay in mid-air. It is quickly sucked into a fist sized orb across the room. \nEverything is still.
MESSAGE
    wait
    puts "The man lifts himself from the floor. The room is so quiet that you can hear his heart pounding. Or is that yours? You hope not."
    puts "He removes a small vial from his robes and empties it into a slot in the mask. Moments later, the man begins gasping and retching."
    puts "The masked man falls to the floor, unmoving."
    wait
    puts "What would you like to do? |Wait| |Search the room|"
    prompt; next_move = gets.chomp.downcase
    if next_move.include? "wait"
      puts "You play it safe and wait. Good thing, too. After a few minutes, the man levitates slowly from the floor. He begins to cackle in the way only a villain can. This definitely isn't good."
      puts "He quickly casts a spell, and ethereal energy streams from the eyeholes of the mask. His head snaps toward you. Maybe you shouldn't have waited."
      wait
      litch_begin
    else
      puts "Well, he's dead. You think. You meander over to check his pulse, and, yeah. Dead."
      puts "The room is full of magical and enchanted gear. You begin to search through everything the cultists had, marveling in the riches it will bring you."
      puts '"Oh, mortal. How you must such long for material possessions." a deep, booming voices erupts from behind you.'
      puts "You turn to find the masked man levitating from where he fell."
      puts '"I might offer you a place as my servant, but... How trustworthy can a looter be? Besides. You have seen my phylactery."'
      wait
      dead("The Lich slowly lifts his hand in your direction. You find yourself lifting off the grounda and quickly unable to breathe. He cackles in the way only a villain can as the life drains from your body.")
    end
  end    
end

def archmage_battle
  progress
end

def litch_begin
  progress
end

def cave_room
  puts <<MESSAGE
  \nYou decide to hang out here, and the pie looks terribly delicious. You creep slowly closer to it, finding a seat at the table. You stare at the pie. The pie stares back. \nYou give the pie a wink. The pie blushes. \nWait, pies don't blush. What is going on her-
MESSAGE
  wait
  wait
  puts <<MESSAGE
  \nThe next thing you know, the pie is latched onto your arm. It's teeth sink deep into the flesh, drawing a steady stream of blood. Goddamn mimics. \nYou slam the pie repeatedly into the table, but its grip on your arm is firm. You stumble back into the hall, and, with a sense of dread, feel a wire snap against the back of your leg. \nThe pie unlatches, and you swear you hear it laughing. The ground beneath your feet gives way and everything goes black.
MESSAGE
  wait
  puts "Continue..."
  prompt; next_move = gets.chomp
  if next_move.include? "Beelzebub"
    exit
  else
    cave_depths
  end
end

def cave_halls
  puts <<MESSAGE
  \nYou slowly make your way into the black of the cave's hallway. The passageway is fairly broad, but the visibility is low. You make your way forward steadily, carefully. \nYou don't get far before you feel a sudden snap at your shin. Was that a wire? You barely have time to process before the ground gives way beneath your feet and everything goes black.
MESSAGE
   wait
  puts "Continue..."
  prompt; next_move = gets.chomp
  if next_move.include? "Beelzebub"
    exit
  else
    cave_depths
  end
end

def cave_mouth
  puts <<MESSAGE
  \nDeciding to stay on the safe side, you sleep at the mouth of the cave. It's cramped, cold, and uncomfortable. Ultimately, you get little sleep and find yourself feeling a bit cranky and fatigued the next morning. \nHowever, it's a new day, and a beautiful one at that. From here, you could still head deeper into the cave, though the enticing smell has dispersed. \nAlternatively, you could head out into the forest and be back on your way. 
MESSAGE
  wait
  puts "Which do you choose? |Forest| |Go deeper|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "forest"
    forest2
  else
    cave_innards
  end
end

def forest2
  puts <<MESSAGE
  \nBack into the forest it is. After heading out into the woods, you stumble through some brush onto the path. \nAh, once again you've found yourself back on your way. You follow the path for a few miles, breaking only to eat a small lunch of travel food from your pack. \n Eventually you come across a split in the path. To the left, the sign reads "Amandir" while, to the right, the sign reads "Strika."
MESSAGE
  wait
  puts "Which do you choose? |Amandir| |Strika|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "amandir" or next_move.include? "left"
    amandir_path
  else
    strika_path
  end
end

def night_forest
  puts <<MESSAGE
  \nThe cave seems awfully dangerous when you could just camp out here. You begin setting up for the night, when a terrible, screeching howl pierces your ears. \nIt could be nothing, but then again... It could be cause for concern. It's too dark to spot the cave, though, you're sure you could find it. \nAlternatively, you could stick to your choice and stay here.
MESSAGE
  wait
  puts "Which do you choose? |Cave| |Stay here|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "cave"
    cave
  else
    creature
  end
end

def creature
  puts <<MESSAGE
  \nWhat's some pitiful night-time creature to an adventurer like you? You'll brave the night out here. \nYou set up camp, gather wood, make a small fire, and for the first time in a long time, you make a nice dinner for yourself. With a full belly, you quickly fall asleep. \n \n \nYou awake to a creature sniffing at your ear. You jolt up, and the creature jolts back. You lock eyes. It looks uncomfortable. You feel uncomfortable. \nThe creature resembles a small chest, but... Furry, and with arms and legs. It's tongue wags. IT seems harmless, and, more importantly, it seems to like you. \nYou could kill the creature, or you could try feeding it.
MESSAGE
  wait
  puts "Which do you choose? |Kill it| |Feed it|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "kill"
    puts "So sad. You could have had a friend. Oh well, you're a cold-blooded lone wolf."
    wait
    puts "You lie back down for the night and quickly fall asleep. The next morning you go through your routine before packing up your gear and heading out."
    wait
    forest2
  else
    puts "You toss it a bit of food. It quickly devours it, then rushes toward you and nuzzles your leg. Congratulations, you've made a new furry friend. What would you like to call him?"
   
    prompt; pet_name = gets.chomp.capitalize
    character_info = {
      
    }
    character_info["pet_name"] = "#{pet_name}"
    wait
    puts "Your pet's name is #{pet_name}!"
    wait
    puts "You lie back down for the night and quickly fall asleep. #{pet_name} snuggles up to you. The next morning you go through your routine before packing up your gear and heading out."
    wait
    forest2
  end
end




def stream
  puts <<MESSAGE
  \nThe temptation is too great. You can't help but to see the source of this beautiful music. \nYou carefully tread closer to the stream, placing each foot down with ease in an attempt to move quietly. Finally, you reach the end of the \nbrush and see the source of the sound: a sole dwarf, hairy and barrel-chested, singing in a beautiful falsetto. You're disappointed, but, much to your own shame, not overly. \nWhile you attempt to process what's happening before your eyes... and ears... the ground beneath you gives way. The rainy season causes the stream \nto become more of a river, and you were unknowingly standing on what was its bank. \nyou slide down, roll, and come to a stop roughly ten feet from the dumbfounded dwarf. He doesn't look \nhappy.
MESSAGE
  wait
  puts "What do you do? |Explain yourself| |Draw your weapon| |Cast a spell|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "explain"
    puts "What do you say?"
    wait
    prompt; puts "1) I was entranced by your beautiful song. I couldn't help but to come see what could create such a sound."
    prompt; puts "2) I was expecting a woman. How do you sing like that?"
    prompt; puts "3) Trust me, I'm more disappointed than you are right now."
    prompt; character_response = gets.chomp.downcase
    if character_response.include? "1"
      puts "The dwarf, who was covering himself, slowly lets his arms drop to the sides. You lock eyes. You're uncomfortable. He pulls you into an embrace."
      wait
      dead("The dwarf falls in love with you. The two of you live a long happy life together. You were always too awkward to admit you weren't in to it. Things could be worse, no?")
    else
      puts "The dwarf grunts. He looks at you for a moment, then says"
      puts '"I suggest you leave now."'
      wait
      puts "Do you leave? (Y/N)"
      prompt; next_move = gets.chomp.downcase
      if next_move.include? "y"
        forest
      else
        puts "You decide to stay, standing awkwardly."
        wait
        dead("When it's clear you aren't leaving, the dwarf, in one smooth motion, kicks an axe out of the stream and into the air. \nHe catches it smoothly, then, with surgical precision, implants in your chest.")
      end
    end
  elsif next_move.include? "weapon"
    puts "You draw your weapon in front of the disgruntled dwarf."
    wait
    dead("He reacts much more quickly than you do. His movements are as beautiful as his voice, and in one smooth motion, kicks an axe out of the stream and into the air. He catches it smoothly, then, with surgical precision, implants in your chest.")
  else
    puts "What spell would you like to cast? |Charm Person| |Firebolt| |Sleep|"
    prompt; next_move = gets.chomp.downcase
    if next_move.include? "charm" or next_move.include? "person"
      puts "You hastily cast the spell, and the change in the dwarf's demeanor is almost immediate. The dwarf, who was covering himself, slowly lets his arms drop to the sides. You lock eyes. You're uncomfortable. He pulls you into an embrace."
      wait
      dead("The dwarf falls in love with you. The two of you live a long happy life together. You were always too awkward to admit you weren't in to it. Things could be worse, no?")
    elsif next_move.include? "fire"
      puts "You point your outstretched finger at the dwarf and feel arcane energy well up from within. A burst of scolding flame erupts from your fingertip, searing the dwarf. He collapses onto the ground, dead."
      wait
      puts "You search the dwarf, but find nothing worthwhile. Kinda wondering why you killed him in the first place now, huh? You feel ashamed. Slightly."
      wait
      puts "What would you like to do now? |Head back| |Follow Stream|"
        prompt; next_move = gets.chomp.downcase
        if next_move.include? "head" or next_move.include? "back"
          forest
        else
          downstream
        end
    else
      puts "You quickly chant the incantation for the spell. The dwarf looks confused, not recognizing the language the chant is in. You can see shift on his face as he realized you're casting a spell."
      wait
      dead("He reacts quickly, before you have the chance to finish casting. His movements are as beautiful as his voice, and in one smooth motion, kicks an axe out of the stream and into the air. He catches it smoothly, then, with surgical precision, implants in your chest.")
    end
  end
end

def downstream
  puts <<MESSAGE
  \nYou follow the stream for a bit. It's surrounded fairly heavily by a thick wood on either side, but, after a few hours of walking in comes to a low point. \nAbout fifteen feet away, you can see the path again.
MESSAGE
  wait
  puts "What would you like to do? |Path| |Stay on stream|"
  
  prompt; next_move = gets.chomp.downcase
  if next_move.include? "path"
    path
  else
    flood
  end
end

def flood
  puts <<MESSAGE
  \nYou keep following the stream for a few more hours. Suddenly, you hear a low, trickling sound in the distance... Followed by a rumble. What is that? Thunder? \nWhile you sit and ponder what the noise is, you notice a sudden wall of water approaching you. The water slams into you, tumbling you over and over against the rockbed. \nJust when you think you're finally going to succumb to the beating and lack of oxygen, you find yourself suddenly falling, followed by blackness.
MESSAGE
   wait
  puts "Continue..."
  prompt; next_move = gets.chomp
  if next_move.include? "Beelzebub"
    exit
  else
    cave_depths
  end
end

start


