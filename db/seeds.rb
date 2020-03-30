# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create_or_find_by alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create_or_find_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create_or_find_by(name: 'Luke', movie: movies.first)



#CakeFlavor.destroy_all
CakeFlavor.find_or_create_by(flavor_name: "Vanilla")
CakeFlavor.find_or_create_by(flavor_name: "Chocolate")
CakeFlavor.find_or_create_by(flavor_name: "Marble")
CakeFlavor.find_or_create_by(flavor_name: "Red Velvet")
CakeFlavor.find_or_create_by(flavor_name: "Coffee")
CakeFlavor.find_or_create_by(flavor_name: "Almond")
CakeFlavor.find_or_create_by(flavor_name: "Test")

RentalItem.create(rental_item_name: "Gold Wedding Cake Stand", rental_item_description: "Gold cake stand for wedding cakes", rental_item_cost: "40.00") 
RentalItem.create(rental_item_name: "Silver Wedding Cake Stand", rental_item_description: "Silver cake stand for wedding cakes", rental_item_cost: "40.00") 
RentalItem.create(rental_item_name: "Pedestal Stand Set of Three", rental_item_description: "Three pedestal stands", rental_item_cost: "40.00") 


#Filling.destroy_all
Filling.find_or_create_by(filling_name: "Strawberry Buttercream", filling_description: "Strawberry Buttercream")
Filling.find_or_create_by(filling_name: "Raspberry", filling_description: "Raspberry")
Filling.find_or_create_by(filling_name: "Crunch Buttercream", filling_description: "Crunch Buttercream")
Filling.find_or_create_by(filling_name: "Coffee Buttercream", filling_description: "Coffee Buttercream")
Filling.find_or_create_by(filling_name: "M&Ms", filling_description: "M&Ms")
Filling.find_or_create_by(filling_name: "Chocolate Chips", filling_description: "Chocolate Chips")
Filling.find_or_create_by(filling_name: "Oreos", filling_description: "Oreos")
Filling.find_or_create_by(filling_name: "Ferrero Rocher", filling_description: "Ferrero Rocher")
Filling.find_or_create_by(filling_name: "Almond Buttercream", filling_description: "Almond Buttercream")
Filling.find_or_create_by(filling_name: "Mint Chocolate Chip Buttercream", filling_description: "Mint Chocolate Chip Buttercream")
Filling.find_or_create_by(filling_name: "Nutella Buttercream", filling_description: "Nutella Buttercream")
Filling.find_or_create_by(filling_name: "Vanilla Buttercream", filling_description: "Vanilla Buttercream")
Filling.find_or_create_by(filling_name: "Chocolate Buttercream", filling_description: "Chocolate Buttercream")

#FrostingFlavor.destroy_all
FrostingFlavor.find_or_create_by(frosting_name: "Chocolate Fondant")
FrostingFlavor.find_or_create_by(frosting_name: "Vanilla Fondant")
FrostingFlavor.find_or_create_by(frosting_name: "Chocolate Buttercream")

#DietaryRestriction.destroy_all
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Milk")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Eggs")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Gluten")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Nuts")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Soy")

#RentalItem.destroy_all
RentalItem.find_or_create_by(rental_item_name: "Gold Wedding Cake Stand")
RentalItem.find_or_create_by(rental_item_description: "")
RentalItem.find_or_create_by(rental_item_cost: 40.00)
RentalItem.find_or_create_by(rental_item_name: "Silver Wedding Cake Stand")
RentalItem.find_or_create_by(rental_item_description: "")
RentalItem.find_or_create_by(rental_item_cost: 40.00)
RentalItem.find_or_create_by(rental_item_name: "Pedestal Stand Set of Three")
RentalItem.find_or_create_by(rental_item_description: "")
RentalItem.find_or_create_by(rental_item_cost: 40.00)

#Product.destroy_all
Product.find_or_create_by(product_name: "Cake", product_description: "Custom cakes")
Product.find_or_create_by(product_name: "Cookies", product_description: "Custom cookies")
Product.find_or_create_by(product_name: "Cupcakes", product_description: "Custom cupcakes")
Product.find_or_create_by(product_name: "Cakesicles", product_description: "Custom cakesicles")
Product.find_or_create_by(product_name: "Cakepops", product_description: "Custom cakepops")
Product.find_or_create_by(product_name: "Dessert Shots", product_description: "Dessert shots")
Product.find_or_create_by(product_name: "Cake Jars", product_description: "Custom cake jars")
Product.find_or_create_by(product_name: "Macarons", product_description: "Custom Macarons")
Product.find_or_create_by(product_name: "Mini Cupcakes", product_description: "Custom mini cupcakes")
Product.find_or_create_by(product_name: "Dipped Oreos", product_description: "Custom dipped Oreos")
Product.find_or_create_by(product_name: "Wedding Cake Tasting", product_description: "Custom wedding cake tasting")
Product.find_or_create_by(product_name: "Cake Flavors", product_description: "Custom cakes flavors")

#EmployeeType.destroy_all
EmployeeType.find_or_create_by(employee_type_description: "Baker")
EmployeeType.find_or_create_by(employee_type_description: "Delivery Driver")

#EmployeeStatus.destroy_all
EmployeeStatus.find_or_create_by(employee_status_name: "Inactive")
EmployeeStatus.find_or_create_by(employee_status_name: "Active")

#Employee.destroy_all
Employee.create_or_find_by(employee_first_name: "Deepali", employee_last_name: "Agrawal", employee_email: "Deepali.agrawal@gmail.com", employee_phone: "315-312-8596", employee_status_id:  '1', employee_type_id: '1')
Employee.create_or_find_by(employee_first_name: "Pricella", employee_last_name: "Raj", employee_email: "pricella.raj@gmail.com", employee_phone: "512-555-0101", employee_status_id: "1", employee_type_id: "1")
Employee.create_or_find_by(employee_first_name: "Helen", employee_last_name: "Thompson", employee_email: "h.thompson@outlook.com", employee_phone: "832-316-9262", employee_status_id: "1", employee_type_id: "1")
Employee.create_or_find_by(employee_first_name: "Casey", employee_last_name: "Wright", employee_email: "wright.casey@outlook.com", employee_phone: "218-312-7316", employee_status_id: "1", employee_type_id: "1")
Employee.create_or_find_by(employee_first_name: "Neeraj", employee_last_name: "Signh", employee_email: "singh.neeraj@hotmail.com", employee_phone: "832-640-6595", employee_status_id: "1", employee_type_id: "1")

#TaskStatus.destroy_allcreate_or_find_byd
TaskStatus.find_or_create_by(task_status_name: "Not Started")
TaskStatus.find_or_create_by(task_status_name: "In Progress")
TaskStatus.find_or_create_by(task_status_name: "Complete")

#OrderLineStatus.destroy_all
OrderLineStatus.find_or_create_by(order_line_status_name: "Incomplete")
OrderLineStatus.find_or_create_by(order_line_status_name: "Complete")

#OrderType.destroy_all
OrderType.find_or_create_by(order_description: "Residential")
OrderType.find_or_create_by(order_description: "Wedding")
OrderType.find_or_create_by(order_description: "Pick up")
OrderType.find_or_create_by(order_description: "Birthday")
OrderType.find_or_create_by(order_description: "Baby Shower")
OrderType.find_or_create_by(order_description: "Holiday")
OrderType.find_or_create_by(order_description: "Anniversary")
OrderType.find_or_create_by(order_description: "Special Occasion or Event")
OrderType.find_or_create_by(order_description: "Other")

#OrderStatus.destroy_all
OrderStatus.find_or_create_by(order_status_name: "Inquired")
OrderStatus.find_or_create_by(order_status_name: "In Progress")
OrderStatus.find_or_create_by(order_status_name: "Complete")

#OrderLineStatus.destroy_all
OrderLineStatus.find_or_create_by(order_line_status_name: "Incomplete")
OrderLineStatus.find_or_create_by(order_line_status_name: "Complete")

#CustomerStatus.destroy_all
CustomerStatus.find_or_create_by(customer_status_name: "Inactive")
CustomerStatus.find_or_create_by(customer_status_name: "Active")

#Customer.destroy_all
Customer.create_or_find_by(customer_first_name: "Elisha",customer_last_name: "Diaz",customer_email: "ecdiaz2@uh.edu",
customer_phone: "832-310-8111",customer_street_address: "8377 Kent Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Hudson",customer_last_name: "La Plant",customer_email: "andale@mac.com",
customer_phone: "987-707-9163",customer_street_address: "8377 Kent Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Ivonne",customer_last_name: "Benetiz",customer_email:"sonnen@verizon.net", customer_phone: "908-416-7453",customer_street_address: "8500 South Peachtree Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Daniel",customer_last_name: "Pearsall",customer_email: "parrt@att.net",
customer_phone: "789-461-9413",customer_street_address: "61 Van Dyke Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77013",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Tyler",customer_last_name: "Niswonger",customer_email: "anicolao@msn.com",
customer_phone: "436-360-3599",customer_street_address: "1 Trout Avenue",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77064",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name:"David",customer_last_name:"Nasegawa",customer_email:"linuxhack@verizon.net",customer_phone: "681-922-4039",customer_street_address: "51 Santa Clara Ave",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Rushil",customer_last_name: "Patel",customer_email: "doche@live.com",
customer_phone: "331-786-7216",customer_street_address: "7565 West Carpenter Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77021",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Paul",customer_last_name: "Diaz",customer_email: "pdiaz@uh.edu",
customer_phone: "670-965-9830",customer_street_address: "581 Sutor Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77021",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Jimmy",customer_last_name: "Karter",customer_email: "jk@uh.edu",
customer_phone: "567-687-9017",customer_street_address: "481 William St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77013",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Barracks",customer_last_name: "Llama",customer_email: "ranasta@me.com",
customer_phone: "636-924-0522",customer_street_address: "679 Applegate Lane",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77001",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Dan",customer_last_name: "Pears",customer_email: "debest@live.com",
customer_phone: "229-538-8416",customer_street_address: "16 Bedford Drive",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77017",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Pablo",customer_last_name: "Deter",customer_email: "isotopian@icloud.com",
customer_phone: "83231081238",customer_street_address: "25 Tanglewood Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77037",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Jose",customer_last_name: "Altuve",customer_email: "jtuve@yahoo.com",
customer_phone: "861-424-6852",customer_street_address: "894 Ramblewood St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "12344",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Renu",customer_last_name: "Khator",customer_email: "chancellor@uh.edu",
customer_phone: "802-510-3538",customer_street_address: "215 Westport Road",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77053",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Salvi",customer_last_name: "Sal",customer_email: "ss@icednfrosted.com",
customer_phone: "454-426-2062",customer_street_address: "32 Henry Smith St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77055",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Son",customer_last_name: "Yu",customer_email: "syu@uh.edu",
customer_phone: "923-835-3835",customer_street_address: "795 Kent Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77001",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Melinda",customer_last_name: "Winters",customer_email: "mwinters@ollusa.edu",
customer_phone: "863-308-9155",customer_street_address: "179 Heather Court",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Gloria",customer_last_name: "Bets",customer_email: "gbets@uh.edu",
customer_phone: "270-721-8790",customer_street_address: "104 East Lakeshore Drive",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77033",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "David",customer_last_name: "Wham",customer_email: "whamd@uh.edu",
customer_phone: "900-960-5119",customer_street_address: "77 Redwood Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77011",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "James",customer_last_name: "Grant",customer_email: "jgrant@uh.edu",
customer_phone: "645-380-4500",customer_street_address: "4 Grove St",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77025",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Virgina",customer_last_name: "Merin",customer_email: "vmerin@uh.edu",
customer_phone: "955-305-4777",customer_street_address: "757 Manor Station Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "12344",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Jason",customer_last_name: "Karwack",customer_email: "wax@gmail.com",
customer_phone: "612-515-7657",customer_street_address: "30 Chapel Drive",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77060",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Carolina",customer_last_name: "Esca",customer_email: "idk22@uh.edu",
customer_phone: "841-710-8432",customer_street_address: "472 Jennings Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77064",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Albert",customer_last_name: "Gib",customer_email: "idk23@uh.edu",
customer_phone: "303-829-3952",customer_street_address: "8 Illinois Dr",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77020",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Corinna",customer_last_name: "Kompf",customer_email: "pizza@hotmail.com",
customer_phone: "957-227-6753",customer_street_address: "7924 Overlook Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77035",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "David",customer_last_name: "Dobrik",customer_email: "akoblin@sbcglobal.net",
customer_phone: "690-788-7606",customer_street_address: "7 Selby Circle",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77019",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Jim",customer_last_name: "Turner",customer_email: "thassine@yahoo.ca",
customer_phone: "328-269-9853",customer_street_address: "30 East Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Von",customer_last_name: "Gib",customer_email: "vgib@uh.edu",
customer_phone: "843-477-4814",customer_street_address: "202 Fake Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77014",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Bert",customer_last_name: "Roberts",customer_email: "bertw@yahoo.com",
customer_phone: "261-315-7017",customer_street_address: "202 Fake Street",customer_city: "Houston",
customer_state: "TX",customer_zip_code: "77014",customer_status_id: "1")

#Shape.destroy_all
Shape.find_or_create_by(shape_name: "Round")
Shape.find_or_create_by(shape_name: "Square")
Shape.find_or_create_by(shape_name: "Triangle")

<<<<<<< HEAD

Order.find_or_create_by(order_description: "Jimmy Neutron Head Replica", order_cost: 400.00,
order_start_date: "2020-03-29 04:57:51", order_due_date: "2020-04-10 04:57:51",order_date_finish: "2020-04-11 04:57:51",
order_delivery: 'true',
delivery_street_address: "795 Kent Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77001",
customer_id: "15", order_type_id: "1", order_status_id: "2")

Order.find_or_create_by(order_description: "League of Legends Cake", order_cost: 245.00,
order_start_date: "2020-02-29 04:57:51", order_due_date: "2020-03-10 04:57:51",order_date_finish: "2020-03-11 04:57:51",
order_delivery: 'true',
delivery_street_address: "179 Heather Court", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77023",
customer_id: "16", order_type_id: "8", order_status_id: "3")

Order.find_or_create_by(order_description: "Pizza Cake", order_cost: 50.00,
order_start_date: "2020-05-10 04:57:51", order_due_date: "2020-05-30 04:57:51",order_date_finish: "2020-05-30 04:57:51",
order_delivery: 'true',
delivery_street_address: "104 East Lakeshore Drive", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77033",
customer_id: "17", order_type_id: "9", order_status_id: "3")

Order.find_or_create_by(order_description: "Wedding cake better than everyone elses", order_cost: 2000.00,
order_start_date: "2020-04-01 08:20:51", order_due_date: "2020-04-10 10:57:51",order_date_finish: "2020-04-15 10:00:00",
order_delivery: 'true',
delivery_street_address: "77 Redwood Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77011",
customer_id: "18", order_type_id: "2", order_status_id: "2")

Order.find_or_create_by(order_description: "Small Wedding Cake", order_cost: 500.00,
order_start_date: "2020-04-05 12:10:51", order_due_date: "2020-04-30 00:00:00",order_date_finish: "2020-05-05 00:00:00",
order_delivery: 'true',
delivery_street_address: "4 Grove St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77025",
customer_id: "19", order_type_id: "2", order_status_id: "2")

Order.find_or_create_by(order_description: "Coronavirus is over celebration cake", order_cost: 1.00,
order_start_date: "2020-04-08 12:12:50", order_due_date: "2020-04-20 04:20:20",order_date_finish: "2020-04-20 04:21:21",
order_delivery: 'true',
delivery_street_address: "757 Manor Station Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "12344",
customer_id: "20", order_type_id: "8", order_status_id: "1")

Order.find_or_create_by(order_description: "Coronabegone Cake Pops", order_cost: 70.00,
order_start_date: "2020-04-08 14:12:51", order_due_date: "2020-04-30 14:57:51",order_date_finish: "2020-04-30 14:57:00",
order_delivery: 'true',
delivery_street_address: "30 Chapel Drive", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77060",
customer_id: "21", order_type_id: "8", order_status_id: "1")

Order.find_or_create_by(order_description: "Cake inside a cake", order_cost: 300.00,
order_start_date: "2020-04-10 08:00:51", order_due_date: "2020-04-20 08:00:51",order_date_finish: "2020-04-20 08:00:51",
order_delivery: 'true',
delivery_street_address: "472 Jennings Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77064",
customer_id: "22", order_type_id: "9", order_status_id: "1")

Order.find_or_create_by(order_description: "Gomez Birthday cake", order_cost: 1400.00,
order_start_date: "2020-04-11 10:20:51", order_due_date: "2020-04-26 04:57:51",order_date_finish: "2020-04-27 04:57:51",
order_delivery: 'true',
delivery_street_address: "8 Illinois Dr", delivery_city: "La Plant Wedding Cake", delivery_state: "TX", delivery_zip_code: "77020",
customer_id: "23", order_type_id: "4", order_status_id: "1")

Order.find_or_create_by(order_description: "Benetiz Birthday Cake", order_cost: 600.00,
order_start_date: "2020-04-11 12:57:00", order_due_date: "2020-05-05 09:05:51",order_date_finish: "2020-05-05 04:57:51",
order_delivery: 'true',
delivery_street_address: "7924 Overlook Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77035",
customer_id: "24", order_type_id: "4", order_status_id: "1")

Order.find_or_create_by(order_description: "Celebration Cookies", order_cost: 100.00,
order_start_date: "2020-04-11 10:00:00", order_due_date: "2020-04-20 12:00:00",order_date_finish: "2020-04-21 04:57:51",
order_delivery: 'true',
delivery_street_address: "7 Selby Circle", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77019",
customer_id: "25", order_type_id: "6", order_status_id: "1")

Order.find_or_create_by(order_description: "Crazy Cake", order_cost: 400.00,
order_start_date: "2020-04-15 09:57:51", order_due_date: "2020-05-30 14:57:51",order_date_finish: "2020-06-01 04:57:51",
order_delivery: 'true',
delivery_street_address: "30 East Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77023",
customer_id: "26", order_type_id: "1", order_status_id: "1")

Order.find_or_create_by(order_description: "Make a cake that looks like Robin from Batman and Robin From Fire Emblem", order_cost: 880.00,
order_start_date: "2020-04-20 16:20:00", order_due_date: "2020-05-15 16:20:00",order_date_finish: "2020-05-16 04:57:51",
order_delivery: 'true',
delivery_street_address: "202 Fake Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77014",
customer_id: "27", order_type_id: "9", order_status_id: "1")

Order.find_or_create_by(order_description: "Class of 2020 Wedding Cake", order_cost: 100.00,
order_start_date: "2020-05-01 14:50:50", order_due_date: "2020-05-30 08:00:00",order_date_finish: "2020-06-01 00:00:00",
order_delivery: 'true',
delivery_street_address: "202 Fake Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77014",
customer_id: "28", order_type_id: "8", order_status_id: "1")

=======
#TaskStatus.destroy_all
TaskStatus.find_or_create_by(task_status_name: "Not Started")
TaskStatus.find_or_create_by(task_status_name: "In Progress")
TaskStatus.find_or_create_by(task_status_name: "Complete")


Order.create_or_find_by(order_description: "Order description 1", order_cost: 53.75, order_start_date: "2020-03-29 10:57:51", order_due_date: "2020-04-29 10:57:51", order_date_finish: "2020-04-29 10:57:51", order_delivery: 'false', customer_id: 1, order_type_id: 3, order_status_id: 3)
Order.create_or_find_by(order_description: "Order description 2", order_cost: 69.75, order_start_date: "2020-03-29 10:57:51", order_due_date: "2020-04-01 10:57:51", order_date_finish: "2020-04-01 10:57:51", order_delivery: 'false', customer_id: 2, order_type_id: 3, order_status_id: 2)
Order.create_or_find_by(order_description: "Order description 3", order_cost: 100.15, order_start_date: "2020-03-30 10:57:51", order_due_date: "2020-04-01 10:57:51", order_date_finish: "2020-04-01 10:57:51", order_delivery: 'false', customer_id: 3, order_type_id: 3, order_status_id: 1)
Order.create_or_find_by(order_description: "Order description 4", order_cost: 85.15, order_start_date: "2020-03-31 10:57:51", order_due_date: "2020-04-01 10:57:51", order_date_finish: "2020-04-01 10:57:51", order_delivery: 'false', customer_id: 4, order_type_id: 3, order_status_id: 1)
Order.create_or_find_by(order_description: "Order description 5", order_cost: 37.15, order_start_date: "2020-03-31 12:57:51", order_due_date: "2020-04-01 12:57:51", order_date_finish: "2020-04-01 12:57:51", order_delivery: 'true', delivery_street_address: "5005 North St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "73215", customer_id: 5, order_type_id: 7, order_status_id: 3)
Order.create_or_find_by(order_description: "Order description 6", order_cost: 99.99, order_start_date: "2020-04-01 12:57:51", order_due_date: "2020-04-01 15:25:51", order_date_finish: "2020-04-01 15:25:51", order_delivery: 'true', delivery_street_address: "1234 South St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "73007", customer_id: 6, order_type_id: 2, order_status_id: 3)
Order.create_or_find_by(order_description: "Order description 7", order_cost: 199.99, order_start_date: "2020-04-01 12:57:51", order_due_date: "2020-04-20 15:25:51", order_date_finish: "2020-04-20 15:25:51", order_delivery: 'true', delivery_street_address: "3443 Brother St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "70023", customer_id: 7, order_type_id: 2, order_status_id: 2)

OrderLine.find_or_create_by(order_id: "1", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-03-29 10:57:51", order_line_finish_date: "2020-04-29 10:57:51",order_line_description: "Baking the cake", special_order_notes: "HA you thought")

<<<<<<< HEAD
Tier.create_or_find_by(position: '1', cake_flavor_id: '1', frosting_flavor_id: '1', shape_id: '1', order_line_id: '1', tier_size: '3', tier_special_notes: "This layer is a JoJo reference")
Tier.create_or_find_by(position: '2', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '2', order_line_id: '1', tier_size: '2', tier_special_notes: "This layer is a bad joke")
>>>>>>> 4e74f243a7502d7f89c21eac17dffe033c2a998f
=======
Task.create_or_find_by(order_line_id: '1', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Advanced Cake Baking 4301", task_description: "An advancment of the cake baking industry", task_status_id: '3')

Tier.create_or_find_by(position: 1, cake_flavor_id: 1, frosting_flavor_id: 1, shape_id: 1, order_line_id: 1, tier_size: 3, tier_special_notes: "This layer is a JoJo reference")
Tier.create_or_find_by(position: 2, cake_flavor_id: 1, frosting_flavor_id: 2, shape_id: 2, order_line_id: 1, tier_size: 2, tier_special_notes: "This layer is a bad joke")

RentalLine.create_or_find_by(order_id: 1, rental_item_id: 1)

TierFilling.create_or_find_by(tier_id: 1, filling_id: 1)

TaskAssignment.create_or_find_by(task_id: 1, employee_id: 1)

OrderLineRestriction.create_or_find_by(order_line_id: 1, dietary_restriction_id: 1)
>>>>>>> 0ecc27a7e7c2baa3c0c0663d23583e4bb91a169c
