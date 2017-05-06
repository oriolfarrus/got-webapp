class Universe < ApplicationRecord
  has_many :IntervalMaster, dependent: :destroy
end
