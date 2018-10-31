#CIS424 Project 3
#Brett Dawson, Dorothy Zhao

import functools #for reduce
L = [-3.5, 4.12, 5.4, -7.8, 8.09, 4.2222, 2.5, 2.1]

#5
def zero(L):
	return map(lambda x : 0.0 if x < 0.0 else x, L)

print('New L without negative numbers', list(zero(L)))

#6 reduce based off notes example reduce (lambda x, y: x + y, L).  imported functools to use reduce
def min(L):
	return functools.reduce(lambda x, y : x if x < y else y, L)
print('Minimum in list L: ', min(L))



#7
fit = filter(lambda x : x >= 2.0 and x <= 3.0, L)

print('Values where x is between 2.0 and 3.0 ', list(fit))


