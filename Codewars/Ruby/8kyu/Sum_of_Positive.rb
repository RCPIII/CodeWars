def positive_sum(arr)
  arr.inject(0) {|sum, n| n > 0 ? sum += n : sum = sum}
end