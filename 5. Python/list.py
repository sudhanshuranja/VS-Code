# create a list\
# list is a collection of items
# list is mutable
# list is ordered
# list is indexed
# list is iterable
# list is dynamic
# list is heterogenous
# list is growable
# list is nestable

# create a list
thislist = ["apple", "banana", "cherry"]
print(thislist)

"""
List items are ordered, changeable, and allow duplicate values.
Ordered
When we say that lists are ordered, it means that the items have a defined order, and that order will not change.   
If you add new items to a list, the new items will be placed at the end of the list.
Changeable
The list is changeable, meaning that we can change, add, and remove items in a list after it has been created.
Allow Duplicates

Since lists are indexed, lists can have items with the same value:"""
# list is indexed
# list is iterable
thislist = ["apple", "banana", "cherry", "apple", "cherry"]
print(thislist)

#print the number of items in the list
thislist = ["apple", "banana", "cherry"]
print(len(thislist))

#list item can be of any data type : string, int, boolean, float, complex, list, tuple, set, dictionary
list1 = ["apple", "banana", "cherry"]
list2 = [1, 5, 7, 9, 3] 
list3 = [True, False, False]

print("string",list1)
print("int",list2)
print("boolean",list3)


# list can contain different data types
list4 = ["abc", 34, True, 40,  "male"]
print (" A list with string, int, boolean and float: ", list4)


# from python 3.6, list can contain different data types
#what is the different data types in python

list5 = ["apple", 34, True ]

print (" A list with string, int, boolean and float: ", list5)

#using list constructor to make a list 
thislist = list(("apple", "banana", "cherry")) # note the double round-brackets
print(thislist)

# Access Items : print the second item of the list
thislist = ["apple", "banana", "cherry"]
print(thislist[1])


"""Negative Indexing
Negative indexing means start from the end
-1 refers to the last item, -2 refers to the second last item etc."""

thislist = ["apple", "banana", "cherry"]
print(thislist[-1])

# Range of Indexes
# You can specify a range of indexes by specifying where to start and where to end the range.

thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
print(thislist[2:5])

thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
print(thislist[:4])

thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
print(thislist[2:])

#range of negative indexes
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
print(thislist[-4:-1])

#check  if apple is present in the list : in
thislist = ["apple", "banana", "cherry"]
if "apple" in thislist:
  print("Yes, 'apple' is in the fruits list")

  # to change the value of a specific item, refer to the index number
  thislists = ["apple", "banana", "cherry"]
thislist[1] = "blackcurrant"
print(thislist)


#Change a Range of Item Values
#change the values "banana" and "cherry" with the values "blackcurrant" and "watermelon"
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "mango"]
thislist[1:3] = ["blackcurrant", "watermelon"]
print(thislist)

# Change the second value by replacing it with two new values:
thislist = ["apple", "banana", "cherry"]
thislist[1:2] = ["blackcurrant", "watermelon"]
print(thislist)

#Change the second and third value by replacing it with one value:
thislist = ["apple", "banana", "cherry"]
thislist[1:3] = ["watermelon"]
print(thislist)


#The insert () method    insert  
thislist = ["apple", "banana", "cherry"]
thislist.insert(2, "watermelon")
print(thislist)


#The append() method
thislist = ["apple", "banana", "cherry"]
thislist.append("orange")
print(thislist)



#to insert a list item at a specified index, use the insert() method.
thislist = ["apple", "banana", "cherry"]
thislist.insert(1, "orange")
print(thislist)


# to append elements from another list to the current list, use the extend() method.
thislist = ["apple", "banana", "cherry"]
tropical = ["mango", "pineapple", "papaya"]
thislist.extend(tropical)
print(thislist)

# Add elements of a tuple to the list
thislist = ["apple", "banana", "cherry"]
thisTuple = ("Kiwi ")

thislist.extend(thisTuple)
print(thislist)

# Add elements of a set to the list
thislist = ["apple", "banana", "cherry"]
thisset = {"Kiwi ", "orange"}

thislist.extend(thisset)
print(thislist)




