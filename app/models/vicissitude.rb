class Vicissitude < ApplicationRecord
  belongs_to :interval_master
  belongs_to :house
  has_many :comments, dependent: :destroy
end
