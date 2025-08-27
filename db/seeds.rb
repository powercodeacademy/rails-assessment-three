# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Pizza.destroy_all
Pizzeria.destroy_all
 
Pizzeria.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028"
}])

Pizza.create!([
  { name: "Margherita", description: "Classic tomato and mozzarella", pizzeria: Pizzeria.find_by(name: "Sottocasa NYC") },
  { name: "Diavola", description: "Spicy salami and mozzarella", pizzeria: Pizzeria.find_by(name: "PizzArte") },
  { name: "Quattro Formaggi", description: "Four cheese pizza", pizzeria: Pizzeria.find_by(name: "San Matteo NYC") }
])
