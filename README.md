# Rails Assessment
It's time to put our Rails know-how to the use.

## Objectives
+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, code and debug

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `rake db:migrate` and `rake db:seed` to get started.

## The Domain
You've just been hired by the 'NYC Pizza Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite spots and eats. To do this, we need a way to keep track of the gazillion NYC Pizza joints and record the favorites pizzas for each location.

Luckily, another developer has already started the job. We have a controller, model and views to support the creation, listing and display of pizzerias. Visiting `/pizzerias` displays all of the pizzerias recorded by members. Unfortunately we don't have a way for members to record their favorite pizzas (so, so sad) for each pizzeria. **Each Pizzeria has several Pizzas on their menu and each Pizza belongs to the Pizzeria**.

## Instructions / Deliverables

***To help you complete this assignment we listed steps required to complete this assignment. Read through them carefully to get a sense of the requirements for this code challenge, and then tackle them one by one.***

1. Before we start building the new functionality make sure that you are able to create and view a new pizzeria.

2. Let's build following an inside out approach (Domain model to views). Let's begin by developing the classes required to persist Pizzas and associate them to a Pizzeria. We should then be able to run the code below:

```Ruby
pizzeria = Pizzeria.first
pizza = Pizza.create(name:'Norcia', description: 'Tomato, salami, grilled peppers, fresh mozzarella, grana')
pizza.pizzeria = pizzeria
pizza.save
pizzeria.pizzas.first === pizza # should return true
```

3. Set up validations for the pizza and the pizzeria:
- A pizza must have a name and a description.
- A pizzeria must have a unique name and an address.

4. Now that our backend domain model is properly setup we can build the user facing functionality. Adding this functionality will require you to develop code across many different parts of the application including routes, controllers and views. We've included the GIF below to demo the desired functionality:

![functionality demo](Pizza.gif)

Items needed to complete an application that works like the demo above include:
- `Pizza` new, create, and show actions & corresponding views that display all shown data
- `Pizzeria` show page updated to list all its pizzas
- All the links and forms that match the demo above (the `Pizza` show page should link back to its `Pizzeria` show page)

---

* Don't be confused by the sottocasanyc.com/brooklyn/menu website the demo shows. It is just being used to obtain a pizza name and description.
