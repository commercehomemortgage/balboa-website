class JewelryQuote < Quote
  validates :first_name, :last_name, presence: true
end
