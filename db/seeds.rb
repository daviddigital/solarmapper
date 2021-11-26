# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json' 


postcodes_json_string = '[{
	"Item": 1,
	"postcode_from": 0,
	"postcode_to": 799,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 2,
	"postcode_from": 800,
	"postcode_to": 853,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 3,
	"postcode_from": 854,
	"postcode_to": 854,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 4,
	"postcode_from": 855,
	"postcode_to": 861,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 5,
	"postcode_from": 862,
	"postcode_to": 862,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 6,
	"postcode_from": 863,
	"postcode_to": 869,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 7,
	"postcode_from": 870,
	"postcode_to": 879,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 8,
	"postcode_from": 880,
	"postcode_to": 885,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 9,
	"postcode_from": 886,
	"postcode_to": 1000,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 10,
	"postcode_from": 1001,
	"postcode_to": 2355,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 11,
	"postcode_from": 2356,
	"postcode_to": 2357,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 12,
	"postcode_from": 2358,
	"postcode_to": 2384,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 13,
	"postcode_from": 2385,
	"postcode_to": 2389,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 14,
	"postcode_from": 2390,
	"postcode_to": 2395,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 15,
	"postcode_from": 2396,
	"postcode_to": 2397,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 16,
	"postcode_from": 2398,
	"postcode_to": 2399,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 17,
	"postcode_from": 2400,
	"postcode_to": 2400,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 18,
	"postcode_from": 2401,
	"postcode_to": 2404,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 19,
	"postcode_from": 2405,
	"postcode_to": 2407,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 20,
	"postcode_from": 2408,
	"postcode_to": 2544,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 21,
	"postcode_from": 2545,
	"postcode_to": 2554,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 22,
	"postcode_from": 2555,
	"postcode_to": 2627,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 23,
	"postcode_from": 2628,
	"postcode_to": 2628,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 24,
	"postcode_from": 2629,
	"postcode_to": 2629,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 25,
	"postcode_from": 2630,
	"postcode_to": 2639,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 26,
	"postcode_from": 2640,
	"postcode_to": 2816,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 27,
	"postcode_from": 2817,
	"postcode_to": 2817,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 28,
	"postcode_from": 2818,
	"postcode_to": 2820,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 29,
	"postcode_from": 2821,
	"postcode_to": 2829,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 30,
	"postcode_from": 2830,
	"postcode_to": 2830,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 31,
	"postcode_from": 2831,
	"postcode_to": 2841,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 32,
	"postcode_from": 2842,
	"postcode_to": 2872,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 33,
	"postcode_from": 2873,
	"postcode_to": 2873,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 34,
	"postcode_from": 2874,
	"postcode_to": 2877,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 35,
	"postcode_from": 2878,
	"postcode_to": 2889,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 36,
	"postcode_from": 2890,
	"postcode_to": 2999,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 37,
	"postcode_from": 3000,
	"postcode_to": 3035,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 38,
	"postcode_from": 3036,
	"postcode_to": 3038,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 39,
	"postcode_from": 3039,
	"postcode_to": 3044,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 40,
	"postcode_from": 3045,
	"postcode_to": 3045,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 41,
	"postcode_from": 3046,
	"postcode_to": 3046,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 42,
	"postcode_from": 3047,
	"postcode_to": 3049,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 43,
	"postcode_from": 3050,
	"postcode_to": 3058,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 44,
	"postcode_from": 3059,
	"postcode_to": 3059,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 45,
	"postcode_from": 3060,
	"postcode_to": 3060,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 46,
	"postcode_from": 3061,
	"postcode_to": 3064,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 47,
	"postcode_from": 3065,
	"postcode_to": 3074,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 48,
	"postcode_from": 3075,
	"postcode_to": 3076,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 49,
	"postcode_from": 3077,
	"postcode_to": 3098,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 50,
	"postcode_from": 3099,
	"postcode_to": 3099,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 51,
	"postcode_from": 3100,
	"postcode_to": 3292,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 52,
	"postcode_from": 3293,
	"postcode_to": 3302,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 53,
	"postcode_from": 3303,
	"postcode_to": 3308,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 54,
	"postcode_from": 3309,
	"postcode_to": 3319,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 55,
	"postcode_from": 3320,
	"postcode_to": 3333,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 56,
	"postcode_from": 3334,
	"postcode_to": 3337,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 57,
	"postcode_from": 3338,
	"postcode_to": 3339,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 58,
	"postcode_from": 3340,
	"postcode_to": 3758,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 59,
	"postcode_from": 3759,
	"postcode_to": 3760,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 60,
	"postcode_from": 3761,
	"postcode_to": 3764,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 61,
	"postcode_from": 3765,
	"postcode_to": 3999,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 62,
	"postcode_from": 4000,
	"postcode_to": 4416,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 63,
	"postcode_from": 4417,
	"postcode_to": 4417,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 64,
	"postcode_from": 4418,
	"postcode_to": 4427,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 65,
	"postcode_from": 4428,
	"postcode_to": 4473,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 66,
	"postcode_from": 4474,
	"postcode_to": 4476,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 67,
	"postcode_from": 4477,
	"postcode_to": 4478,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 68,
	"postcode_from": 4479,
	"postcode_to": 4485,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 69,
	"postcode_from": 4486,
	"postcode_to": 4491,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 70,
	"postcode_from": 4492,
	"postcode_to": 4492,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 71,
	"postcode_from": 4493,
	"postcode_to": 4493,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 72,
	"postcode_from": 4494,
	"postcode_to": 4494,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 73,
	"postcode_from": 4495,
	"postcode_to": 4497,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 74,
	"postcode_from": 4498,
	"postcode_to": 4719,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 75,
	"postcode_from": 4720,
	"postcode_to": 4722,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 76,
	"postcode_from": 4723,
	"postcode_to": 4723,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 77,
	"postcode_from": 4724,
	"postcode_to": 4734,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 78,
	"postcode_from": 4735,
	"postcode_to": 4736,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 79,
	"postcode_from": 4737,
	"postcode_to": 4822,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 80,
	"postcode_from": 4823,
	"postcode_to": 4823,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 81,
	"postcode_from": 4824,
	"postcode_to": 4824,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 82,
	"postcode_from": 4825,
	"postcode_to": 4827,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 83,
	"postcode_from": 4828,
	"postcode_to": 4828,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 84,
	"postcode_from": 4829,
	"postcode_to": 4829,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 85,
	"postcode_from": 4830,
	"postcode_to": 5431,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 86,
	"postcode_from": 5432,
	"postcode_to": 5450,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 87,
	"postcode_from": 5451,
	"postcode_to": 5654,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 88,
	"postcode_from": 5655,
	"postcode_to": 5669,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 89,
	"postcode_from": 5670,
	"postcode_to": 5679,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 90,
	"postcode_from": 5680,
	"postcode_to": 5699,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 91,
	"postcode_from": 5700,
	"postcode_to": 5709,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 92,
	"postcode_from": 5710,
	"postcode_to": 5722,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 93,
	"postcode_from": 5723,
	"postcode_to": 5724,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 94,
	"postcode_from": 5725,
	"postcode_to": 5730,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 95,
	"postcode_from": 5731,
	"postcode_to": 5731,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 96,
	"postcode_from": 5732,
	"postcode_to": 5732,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 97,
	"postcode_from": 5733,
	"postcode_to": 5799,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 98,
	"postcode_from": 5800,
	"postcode_to": 6043,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 99,
	"postcode_from": 6044,
	"postcode_to": 6044,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 100,
	"postcode_from": 6045,
	"postcode_to": 6256,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 101,
	"postcode_from": 6257,
	"postcode_to": 6270,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 102,
	"postcode_from": 6271,
	"postcode_to": 6316,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 103,
	"postcode_from": 6317,
	"postcode_to": 6349,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 104,
	"postcode_from": 6350,
	"postcode_to": 6353,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 105,
	"postcode_from": 6354,
	"postcode_to": 6356,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 106,
	"postcode_from": 6357,
	"postcode_to": 6394,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 107,
	"postcode_from": 6395,
	"postcode_to": 6400,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 108,
	"postcode_from": 6401,
	"postcode_to": 6430,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 109,
	"postcode_from": 6431,
	"postcode_to": 6431,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 110,
	"postcode_from": 6432,
	"postcode_to": 6433,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 111,
	"postcode_from": 6434,
	"postcode_to": 6440,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 112,
	"postcode_from": 6441,
	"postcode_to": 6441,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 113,
	"postcode_from": 6442,
	"postcode_to": 6444,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 114,
	"postcode_from": 6445,
	"postcode_to": 6459,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 115,
	"postcode_from": 6460,
	"postcode_to": 6467,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 116,
	"postcode_from": 6468,
	"postcode_to": 6469,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 117,
	"postcode_from": 6470,
	"postcode_to": 6471,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 118,
	"postcode_from": 6472,
	"postcode_to": 6472,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 119,
	"postcode_from": 6473,
	"postcode_to": 6506,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 120,
	"postcode_from": 6507,
	"postcode_to": 6508,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 121,
	"postcode_from": 6509,
	"postcode_to": 6509,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 122,
	"postcode_from": 6510,
	"postcode_to": 6536,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 123,
	"postcode_from": 6537,
	"postcode_to": 6537,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 124,
	"postcode_from": 6538,
	"postcode_to": 6555,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 125,
	"postcode_from": 6556,
	"postcode_to": 6573,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 126,
	"postcode_from": 6574,
	"postcode_to": 6602,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 127,
	"postcode_from": 6603,
	"postcode_to": 6607,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 128,
	"postcode_from": 6608,
	"postcode_to": 6641,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 129,
	"postcode_from": 6642,
	"postcode_to": 6724,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 130,
	"postcode_from": 6725,
	"postcode_to": 6750,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 131,
	"postcode_from": 6751,
	"postcode_to": 6764,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 132,
	"postcode_from": 6765,
	"postcode_to": 6765,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 133,
	"postcode_from": 6766,
	"postcode_to": 6797,
	"Zone": 1,
	"Rating": 1.622
}, {
	"Item": 134,
	"postcode_from": 6798,
	"postcode_to": 6799,
	"Zone": 2,
	"Rating": 1.536
}, {
	"Item": 135,
	"postcode_from": 6800,
	"postcode_to": 6999,
	"Zone": 3,
	"Rating": 1.382
}, {
	"Item": 136,
	"postcode_from": 7000,
	"postcode_to": 8999,
	"Zone": 4,
	"Rating": 1.185
}, {
	"Item": 137,
	"postcode_from": 9000,
	"postcode_to": 9999,
	"Zone": 3,
	"Rating": 1.382
}]'

BatterySupplier.destroy_all
Supplier.destroy_all
SystemType.destroy_all
Battery.destroy_all
Solar.destroy_all
PostCodeRange.destroy_all


Solar.create(name: "Canadian Solar", description: "")
Solar.create(name: "Hyundai Energy Solutions", description: "")
Solar.create(name: "JA Solar", description: "")
Solar.create(name: "Jinko Solar", description: "")
Solar.create(name: "Longi Solar", description: "")
Solar.create(name: "Seraphim", description: "")
Solar.create(name: "Trina", description: "")
Solar.create(name: "Suntech", description: "")
Solar.create(name: "REC", description: "")
Solar.create(name: "LG", description: "")
Solar.create(name: "Solahart", description: "")
Solar.create(name: "Solar Edge", description: "")
Solar.create(name: "Sunpower", description: "")
Solar.create(name: "Solis", description: "")
Solar.create(name: "Goodwe", description: "")
Solar.create(name: "Sunways", description: "")
Solar.create(name: "Delta", description: "")
Solar.create(name: "ABB", description: "")
Solar.create(name: "Huawei", description: "")
Solar.create(name: "Tigo", description: "")
Solar.create(name: "Enphase", description: "")
Solar.create(name: "SMA", description: "")
Solar.create(name: "Fronius", description: "")


solar_and_battery = SystemType.create!(name: "Solar and Battery")
SystemType.create!(name: "Solar Only")
SystemType.create!(name: "Battery Only")

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
website: "dwsolar.com",
price_solar: 12000,
price_battery: 20000,
solar_offer: "26 Q-CELL Q.MAXX 390W SOLAR PANELS, SUNGROW INVERTER WITH 15 YEAR WARRANTY. CONDITIONS APPLY",
battery_offer: "26 Q-CELL Q.MAXX 390W SOLAR PANELS, SUNGROW INVERTER, TESLA POWERWALL 2 WITH 15 YEAR WARRANTY. CONDITIONS APPLY")

supplier.cover.attach(io: File.open(Rails.root.join('app/assets/images/company.jpg')),
filename: 'solar.jpg')

supplier.batteries.create(name: "Tesla Powerwall 2", description: "Powerwall 2 by Tesla.")
supplier.batteries.create(name: "LG Chem", description: "Powerwall 2 by Tesla.")

supplier.solars.create(name: "Sungrow", description: "")
supplier.solars.create(name: "Q-Cell", description: "")

hash = JSON.parse(postcodes_json_string)
hash.each do |range|
    supplier.post_code_ranges.create(postcode_from: range["postcode_from"].to_s, postcode_to: range["postcode_to"].to_s, zone: range["Zone"].to_s, rating: range["Rating"].to_s)
end

p "#{Supplier.count} suppliers created"
p "#{SystemType.count} system types created"
p "#{Battery.count} batteries created"
p "#{BatterySupplier.count} battery_supliers created"
p "#{Solar.count} solar systems created"
p "#{SolarSupplier.count} solar_suppliers created"
p "#{PostCodeRange.count} post code ranges created"
p "#{PostCodeRangeSupplier.count} post_code_range_suppliers created"