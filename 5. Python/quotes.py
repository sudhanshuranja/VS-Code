print("Sudhanshu Ranjan")
print('Sudhanshu Ranjan')
intro = "My name is Sudhanshu Ranjan"
print(intro)

name = "Sudhanshu Ranjan"
print(name[3])


#looping through string
for x in "Sudhanshu Ranjan":
    print(x)


    #string Length
    Flower = "Red , Rose!"
    print(len(Flower))

    #Check string in keyword
    txt = "The best things in life are free!"
    print("free" in txt)

    txt = "The best things in life are free!"
    if "free" in txt:
        print("Yes, 'free' is present.")


#Check if NOT present 

txt = " Lovely Professional university is NAAC A+ grade university"
print("university" not in txt)

txt = " Lovely Professional university is NAAC A+ grade university"
if "university" not in txt:
    print("Yes, 'university' is NOT present.")


    #Concatenation of two strings
    FirstName = "Sudhanshu"
    lastName = "Ranjan"
    print(FirstName + lastName)

    # to add a space between them
    FirstName = "Sudhanshu"
    lastName = "Ranjan"
    print(FirstName + " " + lastName)


    #******String and number combine 
    age = 50
    name = "Sudhanshu is my name  and i am {}" # placeholder for string
    print(name.format(age))
    

    # The format method takes unlimited number of arguments, and are placed into the respective placeholders:
    quantity = 3
    itemno = 567
    price = 49.95
    myorder = "I want {} pieces of item number {} for {} dollars."
    print(myorder.format(quantity, itemno, price))

    #You can use index numbers {0} to be sure the arguments are placed in the correct placeholders:
    name = "mid term exam is starting from {}"
    date = "3 of march"
    print(name.format(date))

    #use index numbers {0} to be sure the arguments are placed in the correct placeholders:
    quantity = 134
    itemno = 578
    price = 89
    myorder = "I want to pay {2} dollars for {0} pieces of item number {1}." # 2 is for price, 0 is for quantity, 1 is for itemno
    print(myorder.format(quantity, itemno, price))





#Escape Character
txt = "We are the so-called \"Himachal Pradesh\" from the north."
print(txt)

