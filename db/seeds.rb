#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cocktail.destroy_all
# Cocktail.reset_pk_sequence
# Ingredient.destroy_all
# Ingredient.reset_pk_sequence
# User.destroy_all
# User.reset_pk_sequence
# UserCocktails.destroy_all
# UserCocktails.reset_pk_sequence
user = User.create!(name:"Kerri", username:"kerrilynne", password:"kerri", password_confirmation:"kerri", email:"kerrilynne", image:"string", uid:"string")

vodka = Ingredient.create!(name:"Vodka")
vermouth = Ingredient.create!(name:"Dry Vermouth")
olive_brine = Ingredient.create!(name:"Olive brine")
olive = Ingredient.create!(name:"Olives")

rye_whiskey = Ingredient.create!(name:"Rye whiskey")
sweet_vermouth = Ingredient.create!(name:"Sweet vermouth")
angostura = Ingredient.create!(name:"Angostura bitters")
cherry = Ingredient.create!(name:"Cherry")


pineapple_juice = Ingredient.create!(name:"Pineapple juice")
coconut_cream = Ingredient.create!(name:"Coconut cream")
pineapple = Ingredient.create!(name:"Pineapple")

gin = Ingredient.create!(name:"Gin")
vermouth = Ingredient.create!(name:"Vermouth")
campari = Ingredient.create!(name:"Campari")

lime = Ingredient.create!(name:"Lime")
kosher_salt = Ingredient.create!(name:"Kosher Salt")
tequila_blanco = Ingredient.create!(name:"Tequila Blanco")
orange = Ingredient.create!(name:"Orange")
simple_syrup = Ingredient.create!(name:"Simple Syrup")

granulated_sugar = Ingredient.create!(name:"Granulated Sugar")
lemon_juice = Ingredient.create!(name:"Lemon Juice")
brandy = Ingredient.create!(name:"Brandy")
triple_sec = Ingredient.create!(name:"Tripe Sec")

martini = user.cocktails.create(name:"Dirty Martini", recipe:"Combine 2 ounces gin or vodka, 1/2 ounce dry vermouth and 1/2 ounce olive brine in a mixing 
glass filled with Ice. Stir until chilled about 30 seconds.  Strain into a chilled cocktail glass, garnish with olives.", calories:114, ingredients: [vodka, vermouth, olive_brine, olive], comment: "Classic martini")

manhattan = user.cocktails.create(name:"Manhattan", recipe:"Stir 2 ounces rye whiskey, 1 ounce sweet vermouth, 2 dashes of Angostura bitters with ice and strain into cocktail glass. Garnish with a cherry.",
calories:187, comment: "The ultimate Manhattan!")

pina = user.cocktails.create(name:"Pina Colada", recipe:"Blend 2 1/2 ounces light rum, dash of Angostura bitters, 3 ounces fresh pineapple juice and 1 ounce coconut cream with 1 cup ice. Serve in chilled collins glass- garnish with pineapple.",
calories:245, comment: "The best Pina!")

negroni = user.cocktails.create(name:"Negroni", recipe:"Stir 1½ ounces gin, 1 ounce Carpano Antica Formula vermouth, ¾ ounce Campari in an ice-filled mixing glass until very cold, about 30 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into an ice-filled rocks glass. Garnish with 3 very thin orange slices.",
calories:195, comment: "Awesome negroni!")

margarita = user.cocktails.create(name:"Margarita", recipe:"Place some salt on a small plate. Rub rim of an old-fashioned or rocks glass with lime (reserve for serving); dip in salt. Fill with ice and set aside. Combine 2 oz. tequila blanco, ¾ oz.fresh lime juice,  ¾ oz. simple syrup in a cocktail shaker. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into reserved glass. Garnish with lime wheel..",
calories:200, comment: "Classic margarita")

sidecar = user.cocktails.create(name:"Side Car", recipe:"Place some sugar on a small plate. Moisten half of rim of a coupe glass with a little lemon juice and dip into sugar; shake off excess. Set aside. Combine 2 ounces brandy, ¾ ounce triple sec, and remaining ¾ oz. lemon juice in a cocktail shaker. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into reserved glass.",
calories:200, comment: "awesome side car")





manhattan.ingredients = [rye_whiskey, sweet_vermouth, angostura, cherry]

pina.ingredients = [pineapple_juice, coconut_cream, angostura, pineapple]

negroni.ingredients = [gin, vermouth, campari, orange]

margarita.ingredients = [kosher_salt, lime, tequila_blanco, simple_syrup]

sidecar.ingredients = [granulated_sugar, lemon_juice, brandy, triple_sec]

#Ingredient.create([{name: "Soda"},{name: "Rum"}])

# UserCocktail.create!(user_id:1, cocktail_id:1)



