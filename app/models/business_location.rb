class BusinessLocation < ApplicationRecord
  # > rails g model BusinessLocation name business:references
  belongs_to :business
  has_many :people
end
