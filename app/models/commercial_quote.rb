class CommercialQuote < Quote
  validates :first_name, :last_name, :street_address, :city, :zipcode, :commercial_business_type, presence: true
end
