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
user1 = User.create!(name:"Doug", username:"Dougj", password:"kerri", password_confirmation:"kerri", email:"dougjmoran", image:"string", uid:"string")

vodka = Ingredient.create!(name:"Vodka")
# vermouth = Ingredient.create!(name:"Dry Vermouth")
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

mint = Ingredient.create!(name:"Mint")
lemon = Ingredient.create!(name:"Lemon")
bourbon = Ingredient.create!(name:"Bourbon")

tonic = Ingredient.create!(name:"Tonic water")
soda = Ingredient.create!(name:"Club Soda")
ginger_syrup = Ingredient.create!(name:"Ginger Syrup")
white_rum = Ingredient.create!(name:"White Rum")
sugar = Ingredient.create!(name:"Sugar")
cranberry = Ingredient.create!(name:"Cranberry Juice")
champagne = Ingredient.create!(name:"Champagne")
aperol = Ingredient.create!(name:"Aperol")
prosecco = Ingredient.create!(name:"Prosecco")
grapefruit = Ingredient.create!(name:"Grapefruit")
lychee = Ingredient.create!(name:"Lychee Juice")
onions = Ingredient.create!(name:"Onions")
rum = Ingredient.create!(name:"Rum")
ginger_beer = Ingredient.create!(name:"Ginger beer")
egg_white = Ingredient.create!(name:"Egg white")
applejack = Ingredient.create!(name:"Applejack")


martini = user.cocktails.create(name:"Dirty Martini", recipe:"Combine 2 ounces gin or vodka, 1/2 ounce dry vermouth and 1/2 ounce olive brine in a mixing 
glass filled with Ice. Stir until chilled about 30 seconds.  Strain into a chilled cocktail glass, garnish with olives.", calories:114, ingredients: [vodka, vermouth, olive_brine, olive], comment: "Classic martini")

manhattan = user.cocktails.create(name:"Manhattan", recipe:"Stir 2 ounces rye whiskey, 1 ounce sweet vermouth, 2 dashes of Angostura bitters with ice and strain into cocktail glass. Garnish with a cherry.",
calories:187, ingredients: [rye_whiskey, sweet_vermouth, angostura, cherry], comment: "The ultimate Manhattan!")

pina = user.cocktails.create(name:"Pina Colada", recipe:"Blend 2 1/2 ounces light rum, dash of Angostura bitters, 3 ounces fresh pineapple juice and 1 ounce coconut cream with 1 cup ice. Serve in chilled collins glass- garnish with pineapple.",
calories:245, ingredients: [pineapple_juice, coconut_cream, angostura, pineapple], comment: "The best Pina!")

negroni = user.cocktails.create(name:"Negroni", recipe:"Stir 1½ ounces gin, 1 ounce Carpano Antica Formula vermouth, ¾ ounce Campari in an ice-filled mixing glass until very cold, about 30 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into an ice-filled rocks glass. Garnish with 3 very thin orange slices.",
calories:195, ingredients: [gin, vermouth, campari, orange], comment: "Awesome negroni!")

margarita = user.cocktails.create(name:"Margarita", recipe:"Place some salt on a small plate. Rub rim of an old-fashioned or rocks glass with lime (reserve for serving); dip in salt. Fill with ice and set aside. Combine 2 oz. tequila blanco, ¾ oz.fresh lime juice,  ¾ oz. simple syrup in a cocktail shaker. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into reserved glass. Garnish with lime wheel..",
calories:200, ingredients: [kosher_salt, lime, tequila_blanco, simple_syrup], comment: "Classic margarita")

sidecar = user.cocktails.create(name:"Side Car", recipe:"Place some sugar on a small plate. Moisten half of rim of a coupe glass with a little lemon juice and dip into sugar; shake off excess. Set aside. Combine 2 ounces brandy, ¾ ounce triple sec, and remaining ¾ oz. lemon juice in a cocktail shaker. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into reserved glass.",
calories:207, ingredients: [granulated_sugar, lemon_juice, brandy, triple_sec], comment: "awesome side car")

whiskey_smash = user.cocktails.create(name:"Whiskey Smash", recipe:"Using a muddler or the handle of a wooden spoon, mash 7 fresh mint leaves, 1 lemon half, quartered lengthwise, and 1 Tbsp. simple syrup (click for recipe) in a 16-oz. mixing glass or a cocktail shaker 4–5 times just to release juices and oils. Add 1/4 cup bourbon. Transfer to an Old Fashioned glass. Fill halfway with crushed ice, stir, then mound more crushed ice on top. Garnish with mint sprigs.",
calories:150, ingredients: [mint, lemon, simple_syrup, bourbon])

gin_tonic = user.cocktails.create(name:"Gin and Tonic", recipe:"Add 2 ounces of gin to a highball glass filled with ice. Squeeze in lime wedges to taste, then add them to glass. Add 3 ounces of tonic water; stir to combine.",
calories:154, ingredients: [gin, lime, tonic])

moscow_mule = user.cocktails.create(name:"Moscow Mule", recipe:"Pour 1/4 cup of club soda, 3 tablespoons of vodka, and 1 tablespoon of ginger syrup into a Moscow Mule mug filled with ice; stir gently to combine. Garnish with lime wedges.",
calories:182, ingredients: [soda, ginger_syrup, vodka, lime])

daiquiri = user.cocktails.create(name:"Daiquiri", recipe:"Combine 1 teaspoon of sugar, 1¾ ounces of rum, ¾ ounce of lime juice, and ½ ounce of simple syrup in a cocktail shaker; stir until sugar dissolves, about 20 seconds. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Place a large ice cube in a coupe glass; strain cocktail through a Hawthorne strainer or a slotted spoon into glass.",
calories:111, ingredients: [sugar, white_rum, lime, simple_syrup])

mint_julep = user.cocktails.create(name:"Mint Julep", recipe:"In each of 4 short glasses, place 8 mint leaves and 1 teaspoon powdered sugar. Muddle, crushing mint to release oils. Add 1/2 cup (generous) crushed ice to each glass, then 1/4 cup bourbon, and 1 tablespoon water. Stir to blend, adding more powdered sugar if desired. Top each glass with several small sprigs of fresh mint.",
calories:165, ingredients: [granulated_sugar, mint, bourbon])

mojito = user.cocktails.create(name:"Mojito", recipe:"Muddle ¾ ounce of simple syrup and 2 mint sprigs in a cocktail shaker. Add 2 ounces of rum and ¾ ounce of lime juice. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into a tall Collins glass filled with ice. Top off with club soda; garnish with more mint.",
calories:242, ingredients: [simple_syrup, mint, white_rum, lime, soda])

cosmo = user1.cocktails.create(name:"Cosmopolitan", recipe:"Combine vodka, cranberry juice, lime juice, and triple sec in a cocktail shaker. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into a martini glass. Garnish with orange twist.",
calories:100, ingredients: [vodka, cranberry, lime, triple_sec, orange])

french_75 = user1.cocktails.create(name:"French 75", recipe:"Combine 2 ounces of gin, ¾ ounce of lemon juice, and ¾ ounce of simple syrup in a cocktail shaker. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into a large flute. Top with 2 ounces of Champagne; garnish with lemon twist.",
calories:141, ingredients: [gin, lemon_juice, simple_syrup, champagne])

aperol = user1.cocktails.create(name:"Aperol Spritz", recipe:"Thread olives onto a swizzle stick. Pour Aperol and Prosecco into a rocks glass filled with ice. Top off with soda and gently stir with swizzle stick with olives.",
calories:117, ingredients: [olive, aperol, prosecco, soda])

champagne_cocktail = user1.cocktails.create(name:"Aperol Spritz", recipe:"Place a sugar cube in a chilled champagne flute, lash it with 2 or 3 dashes of bitters, fill the glass with brut champagne, and squeeze a lemon twist on top.",
calories:120, ingredients: [sugar, angostura, champagne])

mimosa = user1.cocktails.create(name:"Mimosa", recipe:"Fill champagne flute 1/3 full of fresh-squeezed orange juice. Top up with brut champagne, then add Grand Marnier (optional).",
calories:140, ingredients: [orange, champagne])

gin_martini = user1.cocktails.create(name:"Gin Martini", recipe:"Pour 3 ounces of gin and 1/2 ounce vermouth into a shaker filled with ice. Stir and strain into a martini glass. Garnish with lemon twist or olives.",
calories:176, ingredients: [gin, vermouth, lemon])

screwdriver = user1.cocktails.create(name:"Screwdriver", recipe:"Add vodka, orange juice to a collins glass filled with ice.  Add orange garnish as desired",
calories:164, ingredients: [vodka, orange])

seabreeze = user1.cocktails.create(name:"Sea Breeze", recipe:"Fill a highball glass with ice, pour vodka and juices over the ice.  Stir well, garnish with grapefruit slice.",
calories:180, ingredients: [vodka, cranberry, grapefruit])

old_fashioned = user1.cocktails.create(name:"Old Fashioned", recipe:"Muddle the sugar cube and bitters with one bar spoon of water at the bottom of a chilled rocks glass. (If using simple syrup, combine bitters and one bar spoon of syrup.) Add rye or bourbon. Stir. Add one large ice cube, or three or four smaller cubes. Stir until chilled and properly diluted, about 30 seconds. Slip orange twist on the side of the cube.",
calories:151, ingredients: [sugar, angostura, rye_whiskey, orange])

americano = user1.cocktails.create(name:"Americano", recipe:"Pour 1 1/2 ounces of Campari and 1 1/2 ounces of vermouth into a rocks or highball glass filled with ice. Add splash of club soda. Garnish with an orange twist.",
calories:187, ingredients: [campari, sweet_vermouth, soda, orange])

americano = user1.cocktails.create(name:"Americano", recipe:"Pour 1 1/2 ounces of Campari and 1 1/2 ounces of vermouth into a rocks or highball glass filled with ice. Add splash of club soda. Garnish with an orange twist.",
calories:187, ingredients: [campari, sweet_vermouth, soda, orange])

lychee_martini = user1.cocktails.create(name:"Lychee Martini", recipe:"In a cocktail shaker filled with ice add 6 ounces of vodka, 4 ounces of lychee juice and splash of vermouth. Shake until chilled. Pour into 2 martini glasses and garnish with lychees.",
calories:242, ingredients: [vodka, lychee, vermouth])

gibson_martini = user1.cocktails.create(name:"Gibson Martini", recipe:"Combine 2 1/2 ounces of gin and 3/4 ounce of dry vermouth in a mixing glass filled with ice and stir until chilled. Strain into chilled cocktail glass. Garnish with a cocktail onion",
calories:160, ingredients: [gin, onions, vermouth])

gimlet = user1.cocktails.create(name:"Gimlet", recipe:"Add 2 1/2 ounces gin, 1/2 ounce fresh lime juice and 1/2 ounce simple syrup into a shaker with ice and shake. Strain into a chilled cocktail glass or an Old Fashioned glass filled with fresh ice. Garnish with a lime wheel.",
calories:136, ingredients: [gin, lime, simple_syrup])

dark_stormy = user1.cocktails.create(name:"Dark 'n' Stormy", recipe:"Fill glass with ice, add 1 part rum, then top with 2 parts ginger beer. Squeeze in, then garnish with a lime wedge.",
calories:208, ingredients: [rum, lime, ginger_beer])

pink_lady = user1.cocktails.create(name:"Pink Lady", recipe:"Fill glass with ice, add 1 part rum, then top with 2 parts ginger beer. Squeeze in, then garnish with a lime wedge.",
calories:197, ingredients: [gin, applejack, lemon_juice, egg_white, cherry])







# manhattan.ingredients = [rye_whiskey, sweet_vermouth, angostura, cherry]

# pina.ingredients = [pineapple_juice, coconut_cream, angostura, pineapple]

# negroni.ingredients = [gin, vermouth, campari, orange]

# margarita.ingredients = [kosher_salt, lime, tequila_blanco, simple_syrup]

# sidecar.ingredients = [granulated_sugar, lemon_juice, brandy, triple_sec]

#Ingredient.create([{name: "Soda"},{name: "Rum"}])

# UserCocktail.create!(user_id:1, cocktail_id:1)



