class BoatQuote < Quote
  validates :first_name, :last_name, presence: true
end
