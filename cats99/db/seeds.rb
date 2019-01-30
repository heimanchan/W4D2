# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
cat1 = Cat.create!(birth_date: "12/12/2012", color: "black", name: "Alice", sex: "F", description: "This is the very first cat")
cat2 = Cat.create!(birth_date: "12/12/2012", color: "white", name: "Bob", sex: "M", description: "This is the second cat")
cat3 = Cat.create!(birth_date: "12/12/2012", color: "grey", name: "Candice", sex: "F", description: "This is the third cat")

CatRentalRequest.destroy_all

request1 = CatRentalRequest.create!(cat_id: cat1.id, start_date: "1/1/2019", end_date: "1/2/2019", status:"PENDING")
request2 = CatRentalRequest.create!(cat_id: cat1.id, start_date: "1/2/2019", end_date: "1/3/2019", status:"PENDING")
request3 = CatRentalRequest.create!(cat_id: cat1.id, start_date: "15/1/2019", end_date: "15/2/2019", status:"PENDING")
request4 = CatRentalRequest.create!(cat_id: cat1.id, start_date: "1/11/2019", end_date: "1/12/2019", status:"PENDING")