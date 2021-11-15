class PostCodeRange < ApplicationRecord
    has_many :post_code_range_suppliers, dependent: :destroy
    has_many :suppliers, through: :post_code_range_suppliers

    def postcode_from_to
        return "#{postcode_from.floor} - #{postcode_to.floor}"
    end
end
