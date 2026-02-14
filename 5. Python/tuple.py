# Add elements of a dictionary to the list
thislist = ["apple", "banana", "cherry"]
thisdict = {"Kiwi ": "orange"}

thislist.extend(thisdict)
print(thislist)

# Remove Specified Item
# The remove() method removes the specified item.
thislist = ["apple", "banana", "cherry"]
thislist.remove("banana")
print(thislist)

# The pop() method removes the specified index, (or the last item if index is not specified):
thislist = ["apple", "banana", "cherry"]
thislist.pop()
print(thislist)

# The del keyword removes the specified index:
thislist = ["apple", "banana", "cherry"]
del thislist[0]

print(thislist)

# The del keyword can also delete the list completely:
thislist = ["apple", "banana", "cherry"]
del thislist

#if you do not specify the index , the pop method remove the llast items
thislist  


#delete the entire list 

thislist = ["apple", "banana", "cherry"]
thislist.clear()
print(thislist)

#Clear the List
#The clear() method empties the list:
thislist = ["apple", "banana", "cherry"]
thislist.clear()
print(thislist)

# print all item in the list one by one
thislist = ["apple", "banana", "cherry"]
for x in thislist:
  print(x)

  
# print all item in the list one by one  and 2nd exammple
thislist = ["apple", "banana", "cherry"]
for i in range(len(thislist)):
  print(thislist[i])

# print all item in the list one by one  and 3rd exammple
thislist = ["apple", "banana", "cherry"]
i = 0
while i < len(thislist):
  print(thislist[i])
  i = i + 1

  # print aall item by reffering to the index number
  thislist = ["apple", "banana", "cherry"]
print(thislist[0])
print(thislist[1])
print(thislist[2])

# Loop Through the Index Numbers
thislist = ["apple", "banana", "cherry"]
for i in range(len(thislist)):
  print(thislist[i])

print("The iterable created in the example above is [0, 1, 2].")
print("The length of the iterable is the number of items in the list.")
print("The for loop iterates for each item in the iterable.")
print("Inside the loop, print the name of the fruits list by referring to its index number.")

# Loop Through the Values
thislist = ["apple", "banana", "cherry"]
for x in thislist:
  print(x)

  # Loop Through Both Index and Value
  thislist = ["apple", "banana", "cherry"]
for i, x in enumerate(thislist):
  print(i, x)

  # List Comprehension
  thislist = ["apple", "banana", "cherry"]
[print(x) for x in thislist]

# Print all items , using a while loop to go through the index numbers
thislist = ["apple", "banana", "cherry"]
i = 0
while i < len(thislist):
  print(thislist[i])
  i = i + 1



# Based on a list of fruits , add a new list containing the name of the fruits with the letter "a" in the name]
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = []

for x in fruits:
    if "a" in x:
        newlist.append(x)

print(newlist)

#Accepts only numbers lower than 5, add them to a new list
newlist = [x for x in range(10) if x < 5]

print(newlist)

#Set the values in the new list to upper case
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = [x.upper() for x in fruits]

print(newlist)

#Set the values in the new list to lower case'
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = [x.lower() for x in fruits]
print(newlist)


# Set the values in the new list to "hello"
fruits = ["apple", "banana", "cherry", "kiwi", "mango"]

newlist = ['hello' for x in fruits]

print(newlist)



age = 20

if age >= 18:
    print("Eligible to vote")
else:
    print("Not eligible to vote")
