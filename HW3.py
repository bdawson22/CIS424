
exL = [-3.5, 4.12, 5.4, -7.8, 8.09, 4.2222]

#Problem 5. map() is a built-in function that works like Map() in ML
a = map(lambda x : 0.0 if x < 0.0 else x, L)
print('Removed negative numbers', list(a))

#6
def min(exL):
	return reduce(lambda x, y: x if x < y else y, L)

print min([4.1, 4.2, 5.6. 5.3, 5.1])



#7
fit = filter(lambda x : x >= 2.0 and x <= 3.0, exL)

print('Values where x is between 2.0 and 3.0 ', list(fit))


