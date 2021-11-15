class Supplier < ApplicationRecord
    has_one_attached :cover
    belongs_to :system_type
    has_many :battery_suppliers, dependent: :destroy
    has_many :batteries, through: :battery_suppliers
    has_many :solar_suppliers, dependent: :destroy
    has_many :solars, through: :solar_suppliers
end
