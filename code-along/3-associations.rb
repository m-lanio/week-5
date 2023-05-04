# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
puts "Companies: #{Company.all.count}"
puts "Contacts: #{Contact.all.count}"

# 1. insert new rows in the contacts table with relationship to a company
apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

cook = Contact.new
cook["first_name"] = "Tim"
cook["last_name"] = "Cook"
cook["e-mail"] = "mastercook@apple.com"
cook["company_id"] = apple["id"] #fetches primary key from the Companies table. Assigns the employer-company conection
cook.save

puts cook.inspect

# 2. How many contacts work at Apple? At this point, is pretty straightforward no? Class is functionally over. Have a Ruby hw I should work on over the weekend, since I know is goong to take me a while to figure out the odd syntax.

# 3. What is the full name of each contact who works at Apple?
