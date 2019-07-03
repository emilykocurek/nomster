class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true, length: { minimum: 3, 
    too_short: "must be a minimum of %{count} characters" }
  validates :address, :description, presence: true
end
