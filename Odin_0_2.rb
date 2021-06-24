
def stock_picker(prices)
  r = (0..prices.size-1).map{ |i| prices[i..-1].map{|v| v-prices[i]}.each_with_index.max}.each_with_index.max
  return [r[1], r[0][1]+r[1]]
end


def stock_picker_cleaner(prices)
  priceMap = (0..prices.size-1).map{ |i| prices[i..-1].map{|v| v-prices[i]}}
  maxBuyIndex = priceMap.map{ |l| l.max}.each_with_index.max[1]
  maxSellIndex = priceMap[maxBuyIndex].each_with_index.max[1] + maxBuyIndex
  return [maxBuyIndex, maxSellIndex]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4]

p stock_picker_cleaner([17,3,6,9,15,8,6,1,10])
# => [1, 4]