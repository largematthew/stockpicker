def stockpicker (stocks)
    result = Array.new
    lowIndex = 0
    highIndex = 0
    while lowIndex == highIndex do
        low = stocks.min
        lowIndex = stocks.index(low)
        stocksLength = stocks.length
        if lowIndex == stocksLength
            stocks.delete_at(lowIndex)
            else
                bought = stocks.slice(lowIndex..stocksLength)
                high = bought.max
                highIndex = lowIndex + bought.index(high)
                result = [lowIndex,highIndex]
                if lowIndex == highIndex
                    stocks.delete_at(lowIndex)
                end
        end
    end
    return result
end