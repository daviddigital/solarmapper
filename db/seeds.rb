# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Supplier.destroy_all

Supplier.create(display_name: "DW Solar", 
business_name: "DW Solar Pty Ltd", 
business_num: "403 403 210 220", 
accred_num: "304 403 304 405", 
address: "123 Sydney Street, Brisbane",
phone: "07 5000 5040",
display_email: "contact@dwsolar.com",
quote_email: "davidwatts11@gmail.com",
instant_price: true,
short_description: "Serving Brisbane since 1986, we install solar and batteries in QLD.",
long_description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
website: "dwsolar.com")

