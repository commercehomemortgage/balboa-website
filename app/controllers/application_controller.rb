class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  
  before_action :set_quote_form_referer

  def set_quote_form_referer
    if request.get?
      if request.env['PATH_INFO'] == "/quote"
        session[:in_quote_form] = true
      else
        session[:in_quote_form] = nil
      end
    end
  end
end
