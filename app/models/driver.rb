class Driver < ActiveRecord::Base
  belongs_to :quote, inverse_of: :drivers
  validates :first_name, :last_name, presence: true
end