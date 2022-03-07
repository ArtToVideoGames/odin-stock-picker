def stock_picker(prices)

    starting = prices[0]
    starting_index = 0
  
    profits = 0
    days_range = [0, 0]
  
      prices.each_with_index do |current_price, current_index|
        if(current_price < starting)
          starting = current_price
          starting_index = current_index
        end
  
        if(profits < current_price - starting)
          profits = current_price - starting
          days_range = [starting_index, current_index]
      end
    end
  
    puts "Profit of $" + profits.to_s + " if from " + days_range.to_s
    
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])