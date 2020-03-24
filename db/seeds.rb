# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CakeFlavor.destroy_all
CakeFlavor.create(flavor_name: "Vanilla")
CakeFlavor.create(flavor_name: "Chocolate")
CakeFlavor.create(flavor_name: "Marble")
CakeFlavor.create(flavor_name: "Red Velvet")
CakeFlavor.create(flavor_name: "Coffee")
CakeFlavor.create(flavor_name: "Almond")

Filling.destroy_all
Filling.create(filling_name: "Strawberry Buttercream", filling_description: "Strawberry Buttercream")
Filling.create(filling_name: "Raspberry", filling_description: "Raspberry")
Filling.create(filling_name: "Crunch Buttercream", filling_description: "Crunch Buttercream")
Filling.create(filling_name: "Coffee Buttercream", filling_description: "Coffee Buttercream")
Filling.create(filling_name: "M&Ms", filling_description: "M&Ms")
Filling.create(filling_name: "Chocolate Chips", filling_description: "Chocolate Chips")
Filling.create(filling_name: "Oreos", filling_description: "Oreos")
Filling.create(filling_name: "Ferrero Rocher", filling_description: "Ferrero Rocher")
Filling.create(filling_name: "Almond Buttercream", filling_description: "Almond Buttercream")
Filling.create(filling_name: "Mint Chocolate Chip Buttercream", filling_description: "Mint Chocolate Chip Buttercream")
Filling.create(filling_name: "Nutella Buttercream", filling_description: "Nutella Buttercream")
Filling.create(filling_name: "Vanilla Buttercream", filling_description: "Vanilla Buttercream")
Filling.create(filling_name: "Chocolate Buttercream", filling_description: "Chocolate Buttercream")

FrostingFlavor.destroy_all
FrostingFlavor.create(frosting_name: "Chocolate Fondant")
FrostingFlavor.create(frosting_name: "Vanilla Fondant")
FrostingFlavor.create(frosting_name: "Chocolate Buttercream")

DietaryRestriction.destroy_all
DietaryRestriction.create(dietary_restriction_name: "Milk")
DietaryRestriction.create(dietary_restriction_name: "Eggs")
DietaryRestriction.create(dietary_restriction_name: "Gluten")
DietaryRestriction.create(dietary_restriction_name: "Nuts")
DietaryRestriction.create(dietary_restriction_name: "Soy")

Product.destroy_all
Product.create(product_name: "Cake", product_description: "Custom cakes")
Product.create(product_name: "Cookies", product_description: "Custom cookies")
Product.create(product_name: "Cupcakes", product_description: "Custom cupcakes")
Product.create(product_name: "Cakesicles", product_description: "Custom cakesicles")
Product.create(product_name: "Cakepops", product_description: "Custom cakepops")
Product.create(product_name: "Dessert Shots", product_description: "Dessert shots")
Product.create(product_name: "Cake Jars", product_description: "Custom cake jars")
Product.create(product_name: "Macarons", product_description: "Custom Macarons")
Product.create(product_name: "Mini Cupcakes", product_description: "Custom mini cupcakes")
Product.create(product_name: "Dipped Oreos", product_description: "Custom dipped Oreos")
Product.create(product_name: "Wedding Cake Tasting", product_description: "Custom wedding cake tasting")
Product.create(product_name: "Cake Flavors", product_description: "Custom cakes flavors")

EmployeeType.destroy_all
EmployeeType.create(employee_type_description: "Baker")
EmployeeType.create(employee_type_description: "Delivery Driver")

EmployeeStatus.destroy_all
EmployeeStatus.create(employee_status_name: "Inactive")
EmployeeStatus.create(employee_status_name: "Active")

TaskStatus.destroy_all
TaskStatus.create(task_status_name: "Not Started")
TaskStatus.create(task_status_name: "In Progress")
TaskStatus.create(task_status_name: "Complete")

OrderLineStatus.destroy_all
OrderLineStatus.create(order_line_status_name: "Incomplete")
OrderLineStatus.create(order_line_status_name: "Complete")

OrderType.destroy_all
OrderType.create(order_description: "Residential")
OrderType.create(order_description: "Wedding")
OrderType.create(order_description: "Pick up")
OrderType.create(order_description: "Not selected")

OrderStatus.destroy_all
OrderStatus.create(order_status_name: "Inquired")
OrderStatus.create(order_status_name: "In Progress")
OrderStatus.create(order_status_name: "Complete")

CustomerStatus.destroy_all
CustomerStatus.create(customer_status_name: "Inactive")
CustomerStatus.create(customer_status_name: "Active")

Shape.destroy_all
Shape.create(shape_name: "Round")
Shape.create(shape_name: "Square")
Shape.create(shape_name: "Triangle")