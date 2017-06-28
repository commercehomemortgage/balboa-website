class ValuableItem < ActiveRecord::Base
  belongs_to :quote, inverse_of: :valuable_items
end