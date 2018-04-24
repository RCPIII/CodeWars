def mix(s1, s2)
  stringselect = ('a'..'z').to_a.select { |letter| s1.count(letter) > 1 || s2.count(letter) > 1 }
  stringselect.map! do |stringselect|
    if s1.count(stringselect) > s2.count(stringselect)
      "1:#{stringselect * s1.count(stringselect)}"
    elsif s1.count(stringselect) < s2.count(stringselect)
      "2:#{stringselect * s2.count(stringselect)}"
    else
      "=:#{stringselect * s1.count(stringselect)}"
    end
  end
  stringselect.sort_by { |x| [-x.size, x[0], x[-1]] }.join("/")
end