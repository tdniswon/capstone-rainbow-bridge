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

Employee.destroy_all 
Employee.create(employee_first_name: "Deepali", employee_last_name: "Agrawal", employee_email: "Deepali.agrawal@gmail.com", employee_phone: "315-312-8596", employee_status_id: "1", employee_type_id: "1") 
Employee.create(employee_first_name: "Pricella", employee_last_name: "Raj", employee_email: "pricella.raj@gmail.com", employee_phone: "512-555-0101", employee_status_id: "1", employee_type_id: "1") 
Employee.create(employee_first_name: "Helen", employee_last_name: "Thompson", employee_email: "h.thompson@outlook.com", employee_phone: "832-316-9262", employee_status_id: "1", employee_type_id: "1") 
Employee.create(employee_first_name: "Ritika", employee_last_name: "Patel", employee_email: "r.patel@yahoo.com", employee_phone: "713-318-9323", employee_status_id: "1", employee_type_id: "1") 
Employee.create(employee_first_name: "Casey", employee_last_name: "Wright", employee_email: "wright.casey@outlook.com", employee_phone: "218-312-7316", employee_status_id: "1", employee_type_id: "1") 
Employee.create(employee_first_name: "Neeraj", employee_last_name: "Signh", employee_email: "singh.neeraj@hotmail.com", employee_phone: "832-640-6595", employee_status_id: "1", employee_type_id: "1") 

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
OrderType.create(order_description: "Birthday") 
OrderType.create(order_description: "Baby Shower") 
OrderType.create(order_description: "Holiday") 
OrderType.create(order_description: "Anniversary") 
OrderType.create(order_description: "Special Occasion or Event") 
OrderType.create(order_description: "Other") 

OrderStatus.destroy_all
OrderStatus.create(order_status_name: "Inquired")
OrderStatus.create(order_status_name: "In Progress")
OrderStatus.create(order_status_name: "Complete")

CustomerStatus.destroy_all
CustomerStatus.create(customer_status_name: "Inactive")
CustomerStatus.create(customer_status_name: "Active")

Customer.destroy_all
Customer.create(customer_first_name: "Elisha",customer_last_name: "Diaz",customer_email: "ecdiaz2@uh.edu",
customer_phone: "832-310-8111",customer_street_address: "8377 Kent Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create(customer_first_name: "Hudson",customer_last_name: "La Plant",customer_email: "andale@mac.com",
customer_phone: "987-707-9163",customer_street_address: "8377 Kent Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create(customer_first_name: "Ivonne",customer_last_name: "Benetiz",customer_email:"sonnen@verizon.net", customer_phone: "908-416-7453",customer_street_address: "8500 South Peachtree Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create(customer_first_name: "Daniel",customer_last_name: "Pearsall",customer_email: "parrt@att.net",
customer_phone: "789-461-9413",customer_street_address: "61 Van Dyke Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77013",customer_status_id: "1")
Customer.create(customer_first_name: "Tyler",customer_last_name: "Niswonger",customer_email: "anicolao@msn.com",
customer_phone: "436-360-3599",customer_street_address: "1 Trout Avenue",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77064",customer_status_id: "1")
Customer.create(customer_first_name:"David",customer_last_name:"Nasegawa",customer_email:"linuxhack@verizon.net",customer_phone: "681-922-4039",customer_street_address: "51 Santa Clara Ave",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create(customer_first_name: "Rushil",customer_last_name: "Patel",customer_email: "doche@live.com",
customer_phone: "331-786-7216",customer_street_address: "7565 West Carpenter Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77021",customer_status_id: "1")
Customer.create(customer_first_name: "Paul",customer_last_name: "Diaz",customer_email: "pdiaz@uh.edu",
customer_phone: "670-965-9830",customer_street_address: "581 Sutor Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77021",customer_status_id: "1")
Customer.create(customer_first_name: "Jimmy",customer_last_name: "Karter",customer_email: "jk@uh.edu",
customer_phone: "567-687-9017",customer_street_address: "481 William St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77013",customer_status_id: "1")
Customer.create(customer_first_name: "Barracks",customer_last_name: "Llama",customer_email: "ranasta@me.com",
customer_phone: "636-924-0522",customer_street_address: "679 Applegate Lane",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77001",customer_status_id: "1")
Customer.create(customer_first_name: "Dan",customer_last_name: "Pears",customer_email: "debest@live.com",
customer_phone: "229-538-8416",customer_street_address: "16 Bedford Drive",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77017",customer_status_id: "1")
Customer.create(customer_first_name: "Pablo",customer_last_name: "Deter",customer_email: "isotopian@icloud.com",
customer_phone: "83231081238",customer_street_address: "25 Tanglewood Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77037",customer_status_id: "1")
Customer.create(customer_first_name: "Jose",customer_last_name: "Altuve",customer_email: "jtuve@yahoo.com",
customer_phone: "861-424-6852",customer_street_address: "894 Ramblewood St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "12344",customer_status_id: "1")
Customer.create(customer_first_name: "Renu",customer_last_name: "Khator",customer_email: "chancellor@uh.edu",
customer_phone: "802-510-3538",customer_street_address: "215 Westport Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77053",customer_status_id: "1")
Customer.create(customer_first_name: "Salvi",customer_last_name: "Sal",customer_email: "ss@icednfrosted.com",
customer_phone: "454-426-2062",customer_street_address: "32 Henry Smith St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create(customer_first_name: "Son",customer_last_name: "Yu",customer_email: "syu@uh.edu",
customer_phone: "923-835-3835",customer_street_address: "795 Kent Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77001",customer_status_id: "1")
Customer.create(customer_first_name: "Melinda",customer_last_name: "Winters",customer_email: "mwinters@ollusa.edu",
customer_phone: "863-308-9155",customer_street_address: "179 Heather Court",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create(customer_first_name: "Gloria",customer_last_name: "Bets",customer_email: "gbets@uh.edu",
customer_phone: "270-721-8790",customer_street_address: "104 East Lakeshore Drive",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77033",customer_status_id: "1")
Customer.create(customer_first_name: "David",customer_last_name: "Wham",customer_email: "whamd@uh.edu",
customer_phone: "900-960-5119",customer_street_address: "77 Redwood Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77011",customer_status_id: "1")
Customer.create(customer_first_name: "James",customer_last_name: "Grant",customer_email: "jgrant@uh.edu",
customer_phone: "645-380-4500",customer_street_address: "4 Grove St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77025",customer_status_id: "1")
Customer.create(customer_first_name: "Virgina",customer_last_name: "Merin",customer_email: "vmerin@uh.edu",
customer_phone: "955-305-4777",customer_street_address: "757 Manor Station Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "12344",customer_status_id: "1")
Customer.create(customer_first_name: "Jason",customer_last_name: "Karwack",customer_email: "wax@gmail.com",
customer_phone: "612-515-7657",customer_street_address: "30 Chapel Drive",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77060",customer_status_id: "1")
Customer.create(customer_first_name: "Carolina",customer_last_name: "Esca",customer_email: "idk22@uh.edu",
customer_phone: "841-710-8432",customer_street_address: "472 Jennings Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77064",customer_status_id: "1")
Customer.create(customer_first_name: "Albert",customer_last_name: "Gib",customer_email: "idk23@uh.edu",
customer_phone: "303-829-3952",customer_street_address: "8 Illinois Dr",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77020",customer_status_id: "1")
Customer.create(customer_first_name: "Corinna",customer_last_name: "Kompf",customer_email: "pizza@hotmail.com",
customer_phone: "957-227-6753",customer_street_address: "7924 Overlook Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77035",customer_status_id: "1")
Customer.create(customer_first_name: "David",customer_last_name: "Dobrik",customer_email: "akoblin@sbcglobal.net",
customer_phone: "690-788-7606",customer_street_address: "7 Selby Circle",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77019",customer_status_id: "1")
Customer.create(customer_first_name: "Jim",customer_last_name: "Turner",customer_email: "thassine@yahoo.ca",
customer_phone: "328-269-9853",customer_street_address: "30 East Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create(customer_first_name: "Von",customer_last_name: "Gib",customer_email: "vgib@uh.edu",
customer_phone: "843-477-4814",customer_street_address: "202 Fake Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77014",customer_status_id: "1")
Customer.create(customer_first_name: "Bert",customer_last_name: "Roberts",customer_email: "bertw@yahoo.com",
customer_phone: "261-315-7017",customer_street_address: "202 Fake Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77014",customer_status_id: "1")

Shape.destroy_all
Shape.create(shape_name: "Round")
Shape.create(shape_name: "Square")
Shape.create(shape_name: "Triangle")