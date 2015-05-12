# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sneakers = Sneaker.create([
  {
    name: "Roshe",
    brand: "Nike",
    color: "black",
    cost: 100
  },
  {
    name: "Skate",
    brand: "Vans",
    color: "green",
    cost: 20
  },
  {
    name: "Clyd",
    brand: "Puma",
    color: "blue",
    cost: 80
    }
  ])

stores = Store.create([
{
  name: "GA Shoe Emporium",
  address: "1922 Broadway",
  city: "Los Angeles",
  zipcode: "90026",
},
{
  name: "Awesome Store",
  address: "312 W 5th St.",
  city: "Los Angeles",
  zipcode: "90013",
}

])

inventories = Inventory.create([
  {
    store_id: 1,
    cost: 20,
    quantity: 1
    },
    {
      store_id: 2,
      cost: 10,
      quantity: 10
      }
  ])