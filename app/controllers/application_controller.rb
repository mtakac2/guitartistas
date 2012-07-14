class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :get_biographies

  private

    def get_biographies
      @biographies = Biography.all
    end
end
