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

end
