def top_3_words(t)
  t.downcase.scan(/\w+[\w']*/).inject(Hash.new(0)){|h,w|h[w]+=1;h}.sort_by{|k,v|-v}.take(3).map(&:first)
end