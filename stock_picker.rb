def stock_picker(array)
  lowest_day = find_cheapest(array)
  highest_day = find_priciest(array)
  if lowest_day > highest_day
    highest_day = find_priciest_after(array, lowest_day)
  end
  profit = array[highest_day] - array[lowest_day]
  "Maximum profit = #{profit} bought on day #{lowest_day} for #{array[lowest_day]} & sold on day #{highest_day} for #{array[highest_day]}"
end

def find_cheapest(array)
  cheapest = array[0]
  cheapest_index = 0
  for i in 1...array.length
    if array[i] < cheapest
      cheapest = array[i]
      cheapest_index = i
    end
  end
  cheapest_index
end

def find_priciest(array)
  priciest = array[0]
  priciest_index = 0
  for i in 1...array.length
    if array[i] > priciest
      priciest = array[i]
      priciest_index = i
    end
  end
  priciest_index
end

def find_priciest_after(array, start_index)
  start_index += 1
  price = array[start_index]
  for i in start_index...array.length
    if array[i] > price
      price = array[i]
      highest_index = i 
    end
  end
  highest_index
end

def highest_on_first_day(array)
  first_price = array[0]
  is_first_highest = true
  for i in 1...array.length
    if array[i] > first_price
      return false
    end
  end
  is_first_highest
end

def lowest_on_last_day(array)
  last_price = array[array.length - 1]
  is_last_lowest = true
  for i in 0...array.length - 1
    if array[i] < last_price
      return false
    end
  end
  is_last_lowest
end

stocks = [17,3,6,9,15,8,6,1,10]
p stock_picker(stocks)