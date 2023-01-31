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


puts Salesperson.inspect
# 2. insert 1-2 rows in salespeople table.
new_salesguy = Salesperson.new
new_salesguy ["first_name"] = "Ben"
new_salesguy ["last_name"] = "Block"
new_salesguy ["email"] = "bblock@gmail.com"
new_salesguy.save

new_salesguy = Salesperson.new
new_salesguy ["first_name"] = "Brian"
new_salesguy ["last_name"] = "Eng"
new_salesguy ["email"] = "beng@gmail.com"
new_salesguy.save
# 3. write code to display how many salespeople rows are in the database
puts "Salespeople: #{Salesperson.count}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
ben = Salesperson.find_by({"first_name" => "Ben"})
ben.first_name = "Benjamin"
ben.save
brian = Salesperson.find_by({"first_name" => "Brian"})
# CHALLENGE:
# 5. write code to display each salesperson's full name
puts "#{ben.first_name} #{ben.last_name}"
puts "#{brian.first_name} #{brian.last_name}"
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
