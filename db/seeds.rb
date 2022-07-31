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

kpmg_company = Company.new(
  name: "Kpmg",
)
kpmg_company.save!

deloitte_company = Company.new(
  name: "Deloitte",
)
deloitte_company.save!


kpmg_user = User.new(
  email: "manager@kpmg.com",
  password: "123456",
  company_id:  kpmg_company["id"],
)
kpmg_user.save!


kpmg_user2 = User.new(
  email: "account@kpmg.com",
  password: "123456",
  company_id:  kpmg_company["id"],
)
kpmg_user2.save!


deloitte_user = User.new(
  email: "manager@deloitte.com",
  password: "123456",
  company_id:  deloitte_company["id"],
)
deloitte_user.save!