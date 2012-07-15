class BiographiesController < FrontendController
  def show
    @biography = Biography.find_by_slug(params[:slug])
  end
end
