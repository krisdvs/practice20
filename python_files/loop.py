#for loop
for i in [5, 4, 3, 2, 1, 0] :
    print(i)
print('done')
##############
friends = ['vin', 'vinod', 'sudharshan', 'giri-monkey',] 
for friend in friends :
    print('happy new year:', friend)
print('done')
#############
#Largest so for number
largest_so_far = -1
print('Before', largest_so_far)
for the_num in [9, 2, 4, 66, 26, 123, 423, 11, 3412, -523, 10, 2020] :
    if the_num > largest_so_far :
        largest_so_far = the_num
    print(largest_so_far, the_num)
print('after', largest_so_far)
####################
#counting in loops
count = 0
print('now it-s 0', count)
for thing in [10, 11, 12, 21, 112, 221, 312, 121, 1231] :
    count = count + 1
    print(count, thing)
print('count no is:', count, thing )
###################
# summing in loop
cont = 0
print("now count is ", count)
for thing in [9, 32, 23, 52, 131, 6231, -1334, 13341, 5123, -623, -1001, 6] :
    count = count + thing
    print(count, thing)
print('now count is', count)
##################
count = 0
sum = 0
print('befor count is:', count, 'sum is:', sum)
for value in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14] :
    count = count + 1
    sum = sum + value
    print(count, sum, value)
print('after count is:', count, 'sum is:', sum, 'average is:', sum / count)
###################
 filtiring in loop
print('know the larger value')
for value in  [4, 22, 21, 12, 23, 32, 14, 41, 21, 13] :
if value > 20 :
    print('larger value is:', value )
print('all done know the grater value')
#################
#using a boolean variables
found = False
print('before', found)
for value in [9, 2, 32, 43, 33, 23, 3, 43, 23, 112] :
    if value == 3 :
        found = True
    print(found, value)
print('after', found)
####################
# smallest value
smallest_so_far = 1
print('before', smallest_so_far)
for value in [21, 22, 20, 19, 18, 15, 11, 0, 9, 4, 3] :
    if value < smallest_so_far :
        smallest_so_far = value
    print('smallest_so_far', value)
print('after', smallest_so_far)
##################
# finding the smallest value
smallest = None
print('Before')
for value in [9, 8, 22, 12, 21, 32, 23, 13, 31, 11, 22, 54] :
    if smallest is None :
        smallest = value
    elif value < smallest :
        smallest = value 
    print(smallest, value)
print('after', smallest)
###################




