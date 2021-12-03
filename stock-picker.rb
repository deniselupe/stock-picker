def stock_picker(days)
  buy = 0
  best_gain = 0
  best_dates = []
  
  while buy < days.length - 1 do
    #Assuming the client doesn't sell stock same day as purchase
    #Therefore, sell date must come after buy date
    sell = buy + 1
    
    while sell <= days.length - 1 do
      buy_sell_diff = days[sell] - days[buy]
      
      if buy_sell_diff > best_gain
        best_gain = buy_sell_diff
        best_dates = [buy, sell]
      end
      
      sell += 1
    end
    
    buy += 1
  end
  
  puts best_dates.to_s
end

stock_picker([17,3,6,9,15,8,6,1,10])
