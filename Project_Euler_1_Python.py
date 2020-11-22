# This is my first Python Project using Project Euler.
# Find the sum of all the multiples of 3 or 5 below 1000.

# The easy and efficient way 
# (1 + 2 + 3 + .... n) = 1/2 n(n+1)
print(0.5*((333*1002)+(199*1000)-(66*1005))) 

# The second way
# I am defining a function to sum up all of the multiples of 3 and 5.
def sum():
    # The multiples have to below 1000, they are between 1 and 1000 (including 1)
    Number = range(1, 1000)

    # In order to tell if the numbers are multiples of a number, you use modular arithmetic. You divide all 
    # the numbers by the number and see if the remainder is 0. The symbol is %.
    def Multiple_of_3():
        for x in Number:
            y = x / 3
            print(y) 
          
        
        if type(y) == int:
            print(x) 
        else:
                pass    
        

    Multiple_of_3()
    


sum()

# A third way I found on Project Euler Website
a = range(1000)
count = 0
for i in a:
    if i%3 !=0 and i%5 !=0:continue
    count += i
print('sum:',count)