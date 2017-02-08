//: Playground - noun: a place where people can play

import Cocoa

//list words
var actionsAdverbs = ["vigorously","quickly","silently","eagerly","briskly","recklessly","wickedly"]
var action  = ["mix","stir","shuffle","combine","whisk","spoon","fold"]

var primaryIngredients = ["buffalo","moose","dinosaur","playpus","rhino","blue whale","dodo","manatee"]
var primaryIngredientParts = ["thighs","wings","breasts","fingers","legs","drumsticks","fillets"]
var secondaryIngredients = ["egg","lemon","onion","jalepeno",]
var dryIngredients = ["cheese","flour","sugar","baking powder","baking soda","almonds"]
var wetIngredients = ["applesauce","cream cheese","butter","honey"]
var liquidIngredients = ["milk","water","orange juice","olive oil","vinegar","cod liver oil"]
var ingredientUnit = ["teaspoons","tablespoons","cups"]
var spices = ["nutmeg","cinnimon","curry powder","dill"]

var texture = ["smooth","rough","lumpy","blended"]
var containerAdjective = ["large","small","tinny","gigantic"]
var container = ["jar","pot", "kettle","skillet","toilet"]
var bakeAction = ["bake","cook","place","sit"]
var bakeNoun = ["fridge","freezer","wood stove","garbage can", "microwave", "toaster oven"]
var timeUnit = ["seconds","minutes","hours","day ","years"]
var tempUnit = ["°F","°C","°K"]
var finishedAdjectives = ["golden","crispy","pale","furry","prickly","tough"]
var finishedColor = ["red","orange","purple","green","brown"]


//select ingredients
var primaryIngredient = primaryIngredients[Int(arc4random())%primaryIngredients.count]
var primaryIngredientPart = primaryIngredientParts[Int(arc4random())%primaryIngredientParts.count]
var secondaryIngredient = secondaryIngredients[Int(arc4random())%secondaryIngredients.count]
var dryIngredient = dryIngredients[Int(arc4random())%dryIngredients.count]
var wetIngredient = wetIngredients[Int(arc4random())%wetIngredients.count]
var liquidIngredient = liquidIngredients[Int(arc4random())%liquidIngredients.count]

var finishedAdjective = finishedAdjectives[Int(arc4random())%finishedAdjectives.count]

var time = arc4random()%60+1
var temp = arc4random()%1000+50

var recipeTitle =         "\(finishedAdjective) \(secondaryIngredient) \(primaryIngredient) \(primaryIngredientPart) \n".capitalized

var ingredients =   "Ingredients:\n"
                    + "\(arc4random()%10+2) " + primaryIngredient + " " + primaryIngredientPart + "\n"
                    + "\(arc4random()%10+2) " + secondaryIngredient + "s\n"
                    + "\(arc4random()%10+2) " + ingredientUnit[Int(arc4random())%ingredientUnit.count] + " of " + dryIngredient + "\n"
                    + "\(arc4random()%10+2) " + ingredientUnit[Int(arc4random())%ingredientUnit.count] + " of " + wetIngredient + "\n"
                    + "\(arc4random()%10+2) " + ingredientUnit[Int(arc4random())%ingredientUnit.count] + " of " + liquidIngredient

var directions =    "\nDirections:\n"
                    + actionsAdverbs[Int(arc4random())%actionsAdverbs.count].capitalized + " "
                    + action[Int(arc4random())%action.count] + " "
                    + wetIngredient + " and "
                    + liquidIngredient + " in a "
                    + containerAdjective[Int(arc4random())%containerAdjective.count] + " "
                    + container[Int(arc4random())%container.count] + ".\n"

                    + "Add " + primaryIngredient + ", " + secondaryIngredient + " and " + dryIngredient + ".\n"
                    + action[Int(arc4random())%action.count].capitalized + " "
                    + actionsAdverbs[Int(arc4random())%actionsAdverbs.count] + " until "
                    + texture[Int(arc4random())%texture.count] + ".\n"

                    + bakeAction[Int(arc4random())%bakeAction.count].capitalized + " in a "
                    + bakeNoun[Int(arc4random())%bakeNoun.count] + " at "
                    + "\(temp)" + tempUnit[Int(arc4random())%tempUnit.count] + " for "
                    + "\(time)" + " " + timeUnit[Int(arc4random())%timeUnit.count] + " until "
                    + finishedAdjective + " "
                    + finishedColor[Int(arc4random())%finishedColor.count]  + "."

print(recipeTitle)
print(ingredients)
print(directions)
