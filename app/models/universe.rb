class Universe < ApplicationRecord
  has_many :interval_master, dependent: :destroy
  has_many :houses
end
