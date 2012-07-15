class FrontendController < ApplicationController
  before_filter :get_biographies

  private

    def get_biographies
      @biographies = Biography.all
    end
end