def wait
    sleep 1
end

def prompt
    print ">"
end

def line_break
    puts
    puts
end

def dice_roll
    loop do
        puts "Which die do you need?"
        wait
        puts "|20| |12| |10| |8| |6| |4| |2|"
        prompt; x = gets.chomp.to_i
        puts "How many do you need?"
        wait
        prompt; numdie = gets.chomp.to_i
        line_break
        
        if x == 20
            numdie.times do
                puts "1d#{x} = #{1+rand(20)}"
            end
            break
            
        elsif x == 12
            numdie.times do
                puts "1d#{x} = #{1+rand(12)}"
            end
            break
            
        elsif x == 10
            numdie.times do
                puts "1d#{x} = #{1+rand(10)}"
            end
            break
            
        elsif x == 8
            numdie.times do
                puts "1d#{x} = #{1+rand(8)}"
            end
            break
            
        elsif x == 6
            numdie.times do
                puts "1d#{x} = #{1+rand(6)}"
            end
            break
            
        elsif x == 4
            numdie.times do
                puts "1d#{x} = #{1+rand(4)}"
            end
            break
            
        elsif x == 2
            numdie.times do
                puts "1d#{x} = #{1+rand(2)}"
            end
            break
        else
            puts "Please pick a number"
        end
    end
end

dice_roll

