class Battery < ApplicationRecord
    has_many :battery_suppliers, dependent: :destroy
    has_many :suppliers, through: :battery_suppliers
end
