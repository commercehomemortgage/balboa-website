class QuoteController < ApplicationController
  def index
    @type = params[:type] || "PropertyQuote"
    @quote = @type.classify.constantize.new
  end
end
