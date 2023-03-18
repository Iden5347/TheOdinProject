def stock_picker(prices)
  largest_difference = nil
  for i in 0...prices.length
    for j in i+1...prices.length
      if largest_difference == nil or prices[largest_difference[1]] - prices[largest_difference[0]] < prices[j] - prices[i]
        largest_difference = [i,j]
      end
    end
  end
  return largest_difference
end

puts stock_picker([17,3,6,9,15,8,6,1,10])