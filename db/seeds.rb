# Clear existing data
Pizzeria.destroy_all
Pizza.destroy_all

# Create pizzerias
pizzerias = Pizzeria.create!([
  {
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
  }
])

# Create pizzas and associate them with pizzerias
pizzas = [
  { name: "Margherita", description: "Classic pizza with tomato, mozzarella, and basil", pizzeria: pizzerias[0] },
  { name: "Pepperoni", description: "Pepperoni, mozzarella, and tomato sauce", pizzeria: pizzerias[0] },
  { name: "Quattro Formaggi", description: "Four cheese pizza with mozzarella, gorgonzola, fontina, and parmesan", pizzeria: pizzerias[1] },
  { name: "Diavola", description: "Spicy pizza with pepperoni, chili peppers, and mozzarella", pizzeria: pizzerias[1] },
  { name: "Marinara", description: "Tomato, garlic, oregano, and extra virgin olive oil", pizzeria: pizzerias[2] },
  { name: "Prosciutto e Funghi", description: "Ham, mushrooms, mozzarella, and tomato sauce", pizzeria: pizzerias[2] }
]

Pizza.create!(pizzas)

puts "Seeding completed!"
