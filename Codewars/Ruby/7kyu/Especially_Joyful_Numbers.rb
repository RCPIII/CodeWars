def number_joy(n)
  sum = n.to_s.chars.map(&:to_i).reduce(:+)
  (sum.to_s.reverse.to_i * sum) == n
end