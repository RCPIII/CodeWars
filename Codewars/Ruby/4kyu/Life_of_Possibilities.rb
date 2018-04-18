def possibilities(words)
  l = [] ; d = []; temp = []
  (1..words[:life].length).each do |x|
    temp = words[:life].to_a.combination(x).to_a
    l += temp.each {|x| x.sort!}
  end
  words[:life] = l.sort!

  (1..words[:death].length).each do |x|
    temp = words[:death].to_a.combination(x).to_a
    d += temp.each {|x| x.sort!}
  end
  words[:death] = d.sort!

  {:life=>words[:life], :death=>words[:death]}
end