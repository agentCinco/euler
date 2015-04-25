#!/usr/bin/python

def getValue(name):
    counter = 0
    for letter in name:
        counter = counter + (ord(letter)-64)
    return counter
 
# Open the file and parse into a list without commas
f = open("names.txt")
names = f.readline()
f.close()
namesList = names.split(",")
 
# Now dump into a list and strip those nasty aphostrophes
nList = []
for names in namesList:
    names = names.strip('"')
    nList.append(names)
 
nList.sort()
 
totalSum = 0
counter = 0
 
for names in nList:
    counter = counter + 1
    totalSum = totalSum + (getValue(names) * counter)
 
print "The solution is ", totalSum
