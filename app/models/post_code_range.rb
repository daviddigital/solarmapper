class PostCodeRange < ApplicationRecord
    has_many :post_code_range_suppliers, dependent: :destroy
    has_many :suppliers, through: :post_code_range_suppliers

    def postcode_from_to
        return "#{postcode_from.floor} - #{postcode_to.floor}"
    end

    def postcode_in(postcode)
    hash = {}
        if postcode >= postcode_from && postcode <= postcode_to
            hash[:zone] = zone
            hash[:rating] = rating
            p hash
        end
    end
    # CALCULATION Example rebate: A 10kW system in postcode 4000 installed in 2021
    # 10 * 1.382 * (2031-2021) = 138 STCs
    # 2031 is the year the scheme ends
    # $40 STC set by regulator for entire scheme
    # 138 STCs * $40 = $5520
    
    def rebate(size, rating)
        stc_price = 40
        return size * rating * (2031-Date.today.year) * stc_price
    end
end
