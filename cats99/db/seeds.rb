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

