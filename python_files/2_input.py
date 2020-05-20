n = input('please enter your name: ')
print("hello", n)



# calculating seconds into hours and minutes
seconds = input('please enter the seconds to convert: ')
totl_secnds = int(seconds)

hours = totl_secnds // 3600
scnds_stii_remaining = totl_secnds % 3600
minutes = scnds_stii_remaining // 60
scnds_fnlly_remaining = scnds_stii_remaining % 60

print('hrs', hours, 'minutes', minutes, 'secnds', scnds_fnlly_remaining)


