class QuotesController < ApplicationController
  TYPE_TO_PATH_MAPPING = {
    "PropertyQuote" => "insurance/home",
    "AutoQuote" => "insurance/auto",
    "CommercialQuote" => "insurance/commercial",
    "LifeInsuranceQuote" => "insurance/life",
    "HealthInsuranceQuote" => "insurance/health",
    "MotorcycleQuote" => "insurance/motorcycle",
    "FloodInsuranceQuote" => "insurance/flood",
    "BoatQuote" => "insurance/boat",
    "CondoQuote" => "insurance/condo",
    "RentersQuote" => "insurance/renters",
    "LandlordQuote" => "insurance/landlord",
    "JewelryQuote" => "insurance/jewelry",
    "Contact" => "whoweare/#index"
  }

  respond_to :html

  def create
    @quote = params[:quote].permit(:type)["type"].constantize.new(permitted_params)
    @quote.save
    
    if session[:in_quote_form]
      @type = params[:quote].permit(:type)["type"]
      render "quote/index"
    else
      render TYPE_TO_PATH_MAPPING[@quote.type]
      TYPE_TO_PATH_MAPPING[@quote.type] =~ /\/(.*)/
      @action_name = $1
    end
  end

  private

  def permitted_params
    params.require(:quote).permit!
  end
end
