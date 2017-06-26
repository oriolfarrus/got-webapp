class House < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :universe, optional: true
  has_many :vicissitudes

end
