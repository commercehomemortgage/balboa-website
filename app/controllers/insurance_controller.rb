class InsuranceController < ApplicationController
  def home
    @quote = PropertyQuote.new
  end

  def auto
    @quote = AutoQuote.new
  end

  def boat
    @quote = BoatQuote.new
  end

  def commercial
    @quote = CommercialQuote.new
  end

  def condo
    @quote = CondoQuote.new
  end

  def flood
    @quote = FloodInsuranceQuote.new
  end

  def health
    @quote = HealthInsuranceQuote.new
  end

  def jewelry
    @quote = JewelryQuote.new
  end

  def landlord
    @quote = LandlordQuote.new
  end

  def life
    @quote = LifeInsuranceQuote.new
  end

  def motorcycle
    @quote = MotorcycleQuote.new
  end

  def renters
    @quote = RentersQuote.new
  end
end
