class BiographiesController < FrontendController
  def index
    @biographies = Biography.all

    unless params[:slug].nil?
      @biography = Biography.find_by_slug(params[:slug])
    end
  end
end
