# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit_ = 0
  buying_price = selling_price = prices[0]
  prices.each do |price|
    if price < buying_price
      profit = selling_price - buying_price
      if profit > max_profit_
        max_profit_ = profit
      end
      buying_price = selling_price = price
    elsif price > selling_price
      selling_price = price
    end
  end
  profit = selling_price - buying_price
  return profit > max_profit_ ? profit : max_profit_
end
