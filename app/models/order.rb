class Order < ApplicationRecord
  validates :address, :city, :state, presence: true
end 
