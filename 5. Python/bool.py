#bool represents boolean values True and False
print(  "10 > 9")
print(10 == 9)
print(10 < 9)
#bool() function allows you to evaluate any value, and give you True or False in return

num1 = 200
num2 = 33
if num1 > num2:
    print("num1 is greater than num2")
else:
    print("num1 is not greater than num2")
    
    #Evaluate a string and a number:
print(bool("Hello"))
print(bool(15))
    
    #Evaluate two variables:
x = "Hello"
y = 15
print(bool(x))
print(bool(y))
    
    #The following will return True:
print(bool("abc"))
print(bool(123))
print(bool(["apple", "cherry", "banana"]))
    
    #The following will return False:
print(bool(False))
print(bool(None))
print(bool(0))
print(bool(""))
print(bool(()))

#One more value, or object in this case, evaluates to False, and 
# that is if you have an object that is made from a class with a __len__ function
#  that returns 0 or False:


num1 = 200  
num2 = 33

if num1 > num2:
    print("num1 is greater than num2")