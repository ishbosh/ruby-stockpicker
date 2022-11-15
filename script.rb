def stock_picker(price_array)
    best_pair = []
    max_diff = 0
    price_array.each_with_index do |buy, buy_index|
        price_array.each_with_index do |sell, sell_index|
            if (sell_index > buy_index) && (sell - buy) > max_diff
                max_diff = sell - buy
                best_pair = [buy_index, sell_index]
            end
        end
    end
    best_pair
end

array_test1 = [17,3,6,9,15,8,6,1,10]    # Result should be [1, 4] - for a profit of $15 - $3 = $12
array_test2 = [17,8,11,9,15,8,6,1,10]   # Result should be [7, 8] - for a profit of $10 - $1 = $9
array_test3 = [7,8,6,9,15,8,6,3,1]      # Result should be [2, 4] - for a profit of $15 - $6 = $9

p stock_picker(array_test1)
p stock_picker(array_test2)
p stock_picker(array_test3)