# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
# Clear out old data
Pizza.destroy_all
Pizzeria.destroy_all

# Create pizzerias
pizzerias = Pizzeria.create!([
  {
    name: "Sottocasa NYC",
    address: "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    name: "PizzArte",
    address: "69 W 55th St, New York, NY 10019"
  },
  {
    name: "San Matteo NYC",
    address: "1559 2nd Ave, New York, NY 10028"
  }
])

# Create pizzas for each pizzeria
Pizza.create!([
  {
    name: "Margherita",
    description: "Classic tomato, mozzarella, and fresh basil",
    pizzeria: pizzerias[0]
  },
  {
    name: "Diavola",
    description: "Spicy salami, tomato, and mozzarella",
    pizzeria: pizzerias[0]
  },
  {
    name: "Quattro Formaggi",
    description: "Blend of four cheeses with creamy mozzarella",
    pizzeria: pizzerias[1]
  },
  {
    name: "Prosciutto e Rucola",
    description: "Prosciutto, arugula, and parmesan shavings",
    pizzeria: pizzerias[1]
  },
  {
    name: "Capricciosa",
    description: "Ham, mushrooms, artichokes, and olives",
    pizzeria: pizzerias[2]
  },
  {
    name: "Napoli",
    description: "Anchovies, capers, and mozzarella",
    pizzeria: pizzerias[2]
  }
])

puts "Seeded #{Pizzeria.count} pizzerias and #{Pizza.count} pizzas!"
