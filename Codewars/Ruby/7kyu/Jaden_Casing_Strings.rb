class String
  def toJadenCase
   split(" ").map{|x| x.capitalize}.join(" ")
  end
end