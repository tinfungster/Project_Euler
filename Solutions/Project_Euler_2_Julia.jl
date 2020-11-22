# Hello!
# This is the second Project Euler question where I find the sum of the
# even-valued terms of the Fibonacci Sequence under 4 million!

# I am using Binet's Formula to calculate the terms in the Fibonacci Sequence!

# The Golden Ratio!
φ = (1 + sqrt(5))/2

# The Binet's Formula is :
# the golden ratio (~ 1.618) raised to the nth power and divide it by sqrt of 5
# and rounding the answer to the nearest integer. The error approaches 0 as you
# approach the infinitely big terms!

fibonacci_term = 0
a = (φ ^ fibonacci_term)/sqrt(5)
b = round(Int, a)

# I can calculate many Fibonacci Numbers at once!
# Binet's Formula in ACTION!!!

c = 100
d = 1 : c
e = φ .^ d
f = e/sqrt(5)
fibonacci_numbers = round.(f)

# I can just find the even-valued Fibonacci terms!
# Every third Fibonacci term is even!

g = 100
h = 1 : g
# 3 * h is too skip 2 terms and go to the next even-valued Fibonacci Number.
i = φ .^ (3 * h)
j = i / sqrt(5)
even_valued_fibonacci_numbers = round.(j)

# I control the size of the Fibonacci Numbers.
# I am just setting the domain for the Fibonacci Numbers because I do not want
# them to be too big (The even-valued Fibonacci terms cannot be greater than
# 4 million).

k = 1
sum = 0
while even_valued_fibonacci_numbers[k] < 4000000
	k = k + 1
	sum = sum + even_valued_fibonacci_numbers[k - 1]
end
println(sum)
