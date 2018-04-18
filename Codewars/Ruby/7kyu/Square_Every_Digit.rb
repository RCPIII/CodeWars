def square_digits num
  num.to_s.split("").map {|x| x.to_i*x.to_i}.join.to_i
end