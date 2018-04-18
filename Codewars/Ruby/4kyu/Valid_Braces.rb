def validBraces(braces)
  while braces.gsub!(/(\(\)|\[\]|\{\})/,'') do; end
  braces.empty?
end