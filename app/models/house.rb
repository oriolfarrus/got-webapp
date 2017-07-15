class House < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :universe, optional: true
  has_many :vicissitudes, :dependent => :delete_all

end
