# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_sales = Salesperson.new
new_sales["first_name"] = "Jim"
new_sales["last_name"] = "Bob"
new_sales["email"] = "jimbob@gmail.com"
new_sales.save #inserts into the table

puts Salesperson.all.inspect

puts "Name is #{Salesperson.find_by({"first_name" => "Jim"})["first_name"]} #{Salesperson.find_by({"first_name" => "Jim"})["last_name"]}"

#Make it more legible for yourself
jimboy = Salesperson.find_by({"first_name" => "Jim"})
puts "Name 2 is #{jimboy["first_name"]} #{jimboy["last_name"]}"

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

# CHALLENGE:
# 5. write code to display each salesperson's full name
for salesperon IN Salesperson.all do
    puts "Loop: #{salesperson["first_name"]} #{salesperon["last_name"]}"
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
