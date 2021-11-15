class BatterySupplier < ApplicationRecord
  belongs_to :battery
  belongs_to :supplier
end
