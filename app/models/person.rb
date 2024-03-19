class Person < ApplicationRecord
  # > rails g model Person first_name last_name business_location:references
  belongs_to :business_location
  delegate :business, to: :business_location

  # From here, this works in the rails console:
  # > Business.create(name: "Acme")
  # > BusinessLocation.create(name: "Main Office", business: Business.first)
  # > Person.create(first_name: "John", last_name: "Doe", business_location: BusinessLocation.first)
  # > Person.first.business
end
