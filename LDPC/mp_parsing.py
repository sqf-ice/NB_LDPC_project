##mp_file  = 
##mpfile = open('mp.txt')
##mpfile_min = open('mp_min.txt')
##mpfile_string = mpfile.read()
##mpfile_min_string = mpfile_min.read()
##
##mpfile_string = ')'.join(mpfile_string.split(')     '))
##mpfile_string = '\n'.join(mpfile_string.split('\n  '))
##mpfile_string = '\n'.join(mpfile_string.split('\n '))
##mp_file.write(mpfile_string)
##entries_list = mpfile_string.split('\n')
##
##for i in range(len(entries_list)):
##    entries_list[i] = entries_list[i].split(')')[0]
##
##mpfile_min_string = ')'.join(mpfile_min_string.split(')     '))
##mpfile_min_string = '\n'.join(mpfile_min_string.split('\n  '))
##mpfile_min_string = '\n'.join(mpfile_min_string.split('\n '))
##entries_list_min = mpfile_min_string.split('\n')
##
##for i in range(len(entries_list_min)):
##    entries_list_min[i] = entries_list_min[i].split(')')[0]
##
##print entries_list==entries_list_min

e_file = open('hi.txt')
