# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BatterySupplier.destroy_all
Supplier.destroy_all
SystemType.destroy_all
Battery.destroy_all
Solar.destroy_all
PostCodeRange.destroy_all

solar_and_battery = SystemType.create!(name: "Solar and Battery")

supplier = Supplier.create!(display_name: "Brisbane Solar Co", 
system_type: solar_and_battery,
business_name: "DW Solar Pty Ltd", 
business_num: "403 403 210 220", 
accred_num: "304 403 304 405", 
address: "123 Sydney Street, Brisbane",
phone: "07 5000 5040",
display_email: "contact@dwsolar.com",
quote_email: "davidwatts11@gmail.com",
instant_price: true,
short_description: "Serving Brisbane since 1986, we install solar and batteries in QLD. Brands include Jino Solar panels and Tesla Powerwall",
long_description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
website: "dwsolar.com")

supplier.cover.attach(io: File.open(Rails.root.join('app/assets/images/company.jpg')),
filename: 'solar.jpg')

supplier.batteries.create(size: "13.5 kWh", name: "Powerwall 1", price: "1000000
", available: true, description: "Powerwall 1 by Tesla.")
supplier.batteries.create(size: "13.5 kWh", name: "Powerwall 2", price: "1500000
", available: true, description: "Powerwall 1 by Tesla.")

supplier.solars.create(size: "10 kW", name: "10 kW value system", price: "100000
", available: true, description: "Sungrow 10kW inverter and 25 x 330 kW Jinko solar pv panels.")
supplier.solars.create(size: "10 kW", name: "15 kW value system", price: "150000
", available: true, description: "Sungrow 10kW inverter and 35 x 330 kW Jinko solar pv panels.")

# todo, create ranges
# hash = JSON.parse('./postcodes.json') 
supplier.post_code_ranges.create(postcode_from: "4000", postcode_to: "4416", zone: "3", rating: "1.382")
supplier.post_code_ranges.create(postcode_from: "4416", postcode_to: "4600", zone: "4", rating: "1.4")

#second supplier

supplier_two = Supplier.create!(display_name: "Sydney Solar Co", 
system_type: solar_and_battery,
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

supplier_two.cover.attach(io: File.open(Rails.root.join('app/assets/images/company.jpg')),
filename: 'solar.jpg')

supplier_two.batteries.create(size: "13.5 kWh", name: "Powerwall 1", price: "1000000
", available: true, description: "Powerwall 1 by Tesla.")
supplier_two.batteries.create(size: "13.5 kWh", name: "Powerwall 2", price: "1500000
", available: true, description: "Powerwall 1 by Tesla.")

supplier_two.solars.create(size: "10 kW", name: "10 kW value system", price: "100000
", available: true, description: "Sungrow 10kW inverter and 25 x 330 kW Jinko solar pv panels.")
supplier_two.solars.create(size: "10 kW", name: "15 kW value system", price: "150000
", available: true, description: "Sungrow 10kW inverter and 35 x 330 kW Jinko solar pv panels.")

# todo, create ranges
# hash = JSON.parse('./postcodes.json') 
supplier_two.post_code_ranges.create(postcode_from: "2000", postcode_to: "3000", zone: "3", rating: "1.382")
supplier_two.post_code_ranges.create(postcode_from: "3001", postcode_to: "3999", zone: "4", rating: "1.4")


p "#{Supplier.count} suppliers created"
p "#{SystemType.count} system types created"
p "#{Battery.count} batteries created"
p "#{BatterySupplier.count} battery_supliers created"
p "#{Solar.count} solar systems created"
p "#{SolarSupplier.count} solar_suppliers created"
p "#{PostCodeRange.count} post code ranges created"
p "#{PostCodeRangeSupplier.count} post_code_range_suppliers created"