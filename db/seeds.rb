#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Cocktail.reset_pk_sequence
Ingredient.destroy_all
Ingredient.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence

Cocktail.create(name:"Dirty Martini", recipe:"Combine 2 ounces gin or vodka, 1/2 ounce dry vermouth and 1/2 ounce olive brine in a mixing 
glass filled with Ice. Stir until chilled about 30 seconds.  Strain into a chilled cocktail glass, garnish with olives.", calories:114, comment: "Classic martini")

Cocktail.create(name:"Manhattan", recipe:"Stir 2 ounces rye whiskey, 1 ounce sweet vermouth, 2 dashes of Angostura bitters with ice and strain into cocktail glass. Garnish with a cherry.",
calories:187, comment: "The ultimate Manhattan!")

Cocktail.create(name:"Pina Colada", recipe:"Blend 2 1/2 ounces light rum, dash of Angostura bitters, 3 ounces fresh pineapple juice and 1 ounce coconut cream with 1 cup ice. Serve in chilled collins glass- garnish with pineapple.",
calories:245, comment: "The best Pina!")

Ingredient.create(name:"Vodka", cocktail_id:1, user_id:1)
Ingredient.create(name:"Dry Vermouth", cocktail_id:1, user_id:1)
Ingredient.create(name:"Olive brine", cocktail_id:1, user_id:1)
Ingredient.create(name:"Olives", cocktail_id:1, user_id:1)

Ingredient.create(name:"Rye whiskey", cocktail_id:2, user_id:1)
Ingredient.create(name:"Sweet vermouth", cocktail_id:2, user_id:1)
Ingredient.create(name:"Angostura bitters", cocktail_id:2, user_id:1)
Ingredient.create(name:"Cherry", cocktail_id:2, user_id:1)

Ingredient.create(name:"Light rum", cocktail_id:3, user_id:1)
Ingredient.create(name:"Angostura bitters", cocktail_id:3, user_id:1)
Ingredient.create(name:"Pineapple juice", cocktail_id:3, user_id:1)
Ingredient.create(name:"Coconut cream", cocktail_id:3, user_id:1)
Ingredient.create(name:"Pineapple", cocktail_id:3, user_id:1)

User.create(name:"Kerri", username:"kerrilynne", password:"kerri")
