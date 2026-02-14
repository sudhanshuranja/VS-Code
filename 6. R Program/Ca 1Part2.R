prices <- c(150, 200, 120, 180, 300, 250, 170, 190)

prices_excluding_first <- prices[-1]

prices_above_180 <- prices[prices > 180]

prices_between_150_250 <- prices[prices >= 150 & prices <= 250]

last_three_prices <- tail(prices, 3)

print(prices_excluding_first)

print(prices_above_180)

print(prices_between_150_250)

print(last_three_prices)
