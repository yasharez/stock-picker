def stock_picker(array)
  trades = {}
  array.each_with_index do |buy_price, buy_day|
    array.each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if buy_day < sell_day
        trades[profit] = [buy_day, sell_day]
      end
    end
  end
  largest_profit = trades.keys.sort.reverse[0]
  trade_days = trades[largest_profit]
end

stocks = [17,3,6,9,15,8,6,1,10]
p stock_picker(stocks)