class Vehicle < ActiveRecord::Base
  belongs_to :quote, inverse_of: :vehicles
end