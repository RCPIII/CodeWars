def wait
    sleep 2
end

def prompt
    print ">"
end


def calculator
    loop do
        puts "What would you like to do?"
        puts "|Multiply| |Divide| |Add| |Subtract| |Exit|"
        prompt; action = gets.chomp.downcase
        if action.include? "ex"
            break
        else
            puts "What is your first number?"
            prompt; num1 = gets.chomp.to_f
            puts "What is your second number?"
            prompt; num2 = gets.chomp.to_f
            if action.include? "mult"
                x = num1*num2
                puts x
                wait
            elsif action.include? "div"
                x = num1/num2
                puts x
            elsif action.include? "ad"
                x = num1+num2
                puts x
            elsif action.include? "sub"
                x = num1-num2
                puts x
                wait
            else
                break
            end
        end
    end
end

calculator



