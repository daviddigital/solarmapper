class Solar < ApplicationRecord
    has_many :solar_suppliers, dependent: :destroy
    has_many :suppliers, through: :solar_suppliers
end
