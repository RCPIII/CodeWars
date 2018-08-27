class Dictionary
  def initialize(words)
    @words=words
  end
  def find_most_similar(term)
    likey = Hash.new {|v,k| v[k] = 0}
    @words.each do |word|
      term.split("").each do |x|
        likey[word] += 1 if word.include? x
      end
      likey[word] = 0 if word.length > term.length + 2
      likey[word] = 0 if word.length < term.length - 2
    end
    likey.sort_by(&:reverse).reverse[0][0]
  end
end