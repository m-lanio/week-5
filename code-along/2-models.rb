# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all #deletes all rows in the table. Keeps the table, though. Will give us a reset each time we run this file.
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD -Create, Read, Update, Delete- of company data).

# 1a. check out the schema file
# 1b. check out the model file
puts "There are #{Company.all.count} companies" #Interpolation code is #{function}. Cool! Don't need to concactate

# 2. insert new rows in companies table
new_company = Company.new

puts new_company.inspect

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "www.apple.com"
new_company.save #inserts into the table

puts new_company.inspect

puts "There are #{Company.all.count} companies"

new_company2 = Company.new
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2["url"] = "www.AMAZON.com"
new_company2.save #inserts into the table

new_company3 = Company.new
new_company3["name"] = "Twitter"
new_company3["city"] = "San Francisco"
new_company3["state"] = "CA"
new_company3["url"] = "www.twitter.com"
new_company3.save #inserts into the table

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company
all_companies = Company.all
puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
puts cali_companies.inspect

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple"}) #Gives first row that meets criteria, ignores duplicants
puts apple.inspect

# 5. read a row's column value
puts apple["url"]

# 6. update a row's column value
amazon = Company.find_by({"name" => "Amazon"})
puts amazon["url"]
amazon["url"] = "New URL"
amazon.save
puts amazon["url"]

# 7. delete a row
twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy

puts Company.find_by({"name" => "Twitter"})

puts twitter.inspect
twitter = twitter.dup #Resets twitter to its old value. This is super confusing, because the Twitter object still existed with the old
                      # data, but since it was dropped the .save command thought it did not.

twitter.save
puts Company.find_by({"name" => "Twitter"})