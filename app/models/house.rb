class House < ApplicationRecord
  belongs_to :user
  belongs_to :universe
  has_many :vicissitudes
end
