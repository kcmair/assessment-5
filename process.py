# opens up the um-serv-01.txt file and stores it in a variable called log_file
log_file = open("um-server-01.txt")

# creates a function called sales_reports taking in one arument
def sales_reports(log_file):
    # loops over the data that was passed into the fuction line by line
    for line in log_file:
        # removes any white space at the end of the current line of data
        line = line.rstrip()
        # saves the first three characters of the data in index 0 to the day variable
        day = line[0:3]
        # checks if those first three chacters are "Tue"
        if day == "Mon":
            # If the above statement is true the current line is printed to the console
            print(line)

# calls the sales_reports function and passes in the data stored in the log_file variable
sales_reports(log_file)

print('---------------------------------------------------')
print('---------------------------------------------------')

log_file.seek(0,0)

def ten_plus (log_file):
    for line in log_file:
        line = line.rstrip()
        arr = line.split(' ')
        if int(arr[2]) > 10:
          print(line) 

ten_plus(log_file)

log_file.close()
