# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "\n== Seeding the database with fixtures =="
system("bin/rails db:fixtures:load")



#--------------------------------------------------------------------------

#Create companies

kpmg_company = Company.new(
  name: "Kpmg",
)
kpmg_company.save!

deloitte_company = Company.new(
  name: "Deloitte",
)
deloitte_company.save!


#Create user
#Use this user to show seeds
kpmg_user = User.new(
  email: "manager@kpmg.com",
  password: "123456",
  company_id:  kpmg_company["id"],
)
kpmg_user.save!

#Use this user for real time sessions, at the same time with manager@kpmg.com
kpmg_user2 = User.new(
  email: "account@kpmg.com",
  password: "123456",
  company_id:  kpmg_company["id"],
)
kpmg_user2.save!

#another user
deloitte_user = User.new(
  email: "manager@deloitte.com",
  password: "123456",
  company_id:  deloitte_company["id"],
)
deloitte_user.save!


#Seeds for Manager KPMG user, manager@kpmg.com
#Service 1
account_services = Quote.create(name:'Account Services - Accenture', company_id: kpmg_company["id"])

account_services_date = LineItemDate.create(quote_id: account_services["id"], date: Date.new(2022,8,8))

LineItem.create(line_item_date_id: account_services_date["id"], name:'Stock revision', description:'control stock outflows from the warehouse in brazil', quantity: 1, unit_price: 5000,)

#Product 2
account_product = Quote.create(name:'Software Product - Accenture', company_id: kpmg_company["id"])

account_product_date = LineItemDate.create(quote_id: account_product["id"], date: Date.new(2022,8,10))

LineItem.create(line_item_date_id: account_product_date["id"], name:'Software for Warehouse', description:'Software for stock control, 2 licenses', quantity: 2, unit_price: 10000,)

#Service 3
account_services1 = Quote.create(name:'Training - Deloitte', company_id: kpmg_company["id"])

account_services1_date = LineItemDate.create(quote_id: account_services1["id"], date: Date.new(2022,10,8))

LineItem.create(line_item_date_id: account_services1_date["id"], name:'Commercial Training', description:'commercial training for the sales force, 7 sellers', quantity: 7, unit_price: 3000,)
