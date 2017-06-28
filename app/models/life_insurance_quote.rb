class LifeInsuranceQuote < Quote
  validates :first_name, :last_name, :street_address, :city, :zipcode, presence: true
end
