# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Jim")
User.create(name: "Pam")

Recipe.create(name: "Pasta", user_id: 1)
Recipe.create(name: "Muffins", user_id: 1)
Recipe.create(name: "Focaccia", user_id: 2)
Recipe.create(name: "Shrimp Salad", user_id: 2)
Recipe.create(name: "Pizza", user_id: 2)

i1 = Ingredient.create(name: "flour")
i2 = Ingredient.create(name: "egg")
i3 = Ingredient.create(name: "water")
i4 = Ingredient.create(name: "salt")
i5 = Ingredient.create(name: "shrimp")
i6 = Ingredient.create(name: "salad mix")
i7 = Ingredient.create(name: "cheese")
i8 = Ingredient.create(name: "tomato sauce")
i9 = Ingredient.create(name: "sugar")
i10 = Ingredient.create(name: "butter")
i11 = Ingredient.create(name: "olive oil")

Recipe.find(1).ingredients << [i1, i2, i3, i4, i11]
Recipe.find(2).ingredients << [i1, i2, i9, i10]
Recipe.find(3).ingredients << [i1, i2, i3, i4, i11]
Recipe.find(4).ingredients << [i5, i6, i7, i11]
Recipe.find(5).ingredients << [i1, i3, i4, i7, i8, i11]

User.find(1).ingredients << [i1, i5]
User.find(2).ingredients << [i7]