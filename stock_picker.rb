def stock_picker(prices)
    daily_profits = []

    for i in 0..prices.length-1
        for j in i+1 .. prices.length-1
            daily_profits.push([prices[i], prices[j], prices[j] - prices[i]])
        end
    end

    daily_profits.sort_by {|day| day[2] }[-1][0..1]
end


puts stock_picker([17,3,6,9,15,8,6,1,10])