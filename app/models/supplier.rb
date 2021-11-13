class Supplier < ApplicationRecord
    has_one_attached :cover
    belongs_to :system_type
end
