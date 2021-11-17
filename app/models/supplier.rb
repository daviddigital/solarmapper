class Supplier < ApplicationRecord
    resourcify
    has_one_attached :cover
    belongs_to :system_type
    has_many :battery_suppliers, dependent: :destroy
    has_many :batteries, through: :battery_suppliers
    has_many :solar_suppliers, dependent: :destroy
    has_many :solars, through: :solar_suppliers
    has_many :post_code_range_suppliers, dependent: :destroy
    has_many :post_code_ranges, through: :post_code_range_suppliers

    #todo add more validation, dates, prices, can set error messages.

    validates :display_name, :business_name, presence: true    

    # need to do something like the below, but for all of the postcode ranges served (postcode_from is based on supplier.post_code_range.postcode_from)
    # scope :postcode_match,  -> (postcode) { where("postcode_from < ? AND postcode_to > ?", postcode, postcode) }

    # scope :solar_and_battery -> where(system_type.name: "Solar and Battery")

end
