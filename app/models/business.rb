class Business < ApplicationRecord
  # > rails g model Business name
  has_many :business_locations
  has_many :people, through: :business_locations
end
