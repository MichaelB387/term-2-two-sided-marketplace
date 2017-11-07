class Order < ApplicationRecord
  validates :address, :city, :state, presence: true

  belongs_to :listing
end 
