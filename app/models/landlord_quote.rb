class LandlordQuote < Quote
  validates :name_of_insured, :street_address, :city, :zipcode, presence: true
end
