module ApplicationHelper

  def phone_number_link(text)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
  end

  def gender_collection
    ["Male", "Female"]
  end

  def yes_no_collection
    ["Yes", "No"]
  end

  def auto_bodily_injury_per_person_collection
    ["$25,000", "$50,000", "$100,000", "$250,000", "$500,000 CSL or More", "Not Sure"]
  end

  def auto_bodily_injury_per_accident_collection
    ["$50,000", "$100,000", "$300,000", "$500,000 CSL or More", "Not Sure"]
  end

  def auto_property_damage_collection
    ["$25,000", "$50,000", "$100,000", "$500,000 CSL or More", "Not Sure"]
  end
  
  def auto_comprehensive_deductible_collection
    ["$100", "$250", "$500", "$1000", "$2000", "Not Sure"]
  end

  def auto_collision_deductible_collection
    ["$250", "$500", "$1000", "$2000", "Not Sure"]
  end

  def quote_types
    [
      { type: "PropertyQuote", name: "Property" },
      { type: "AutoQuote", name: "Auto" },
      { type: "CommercialQuote", name: "Commercial" },
      { type: "LifeInsuranceQuote", name: "Life" },
      { type: "HealthInsuranceQuote", name: "Health" },
      { type: "MotorcycleQuote", name: "Motorcycle" }, 
      { type: "FloodInsuranceQuote", name: "Flood" },
      { type: "BoatQuote", name: "Boat & Watercraft" },
      { type: "CondoQuote", name: "Condo" },
      { type: "LandlordQuote", name: "Landlord" },
      { type: "RentersQuote", name: "Renters" },
      { type: "JewelryQuote", name: "Jewelry" }
    ]
  end
end
