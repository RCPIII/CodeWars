puts "Type file name: "
@desiredfiled = gets.chomp

word_list = open('@desiredfile').each_line.collect do |line|
    line.downcase.split
end

p word_list