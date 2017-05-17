class Universe < ApplicationRecord
  has_many :IntervalMaster, dependent: :destroy
  has_many :Houses
end
