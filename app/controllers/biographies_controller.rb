class BiographiesController < FrontendController
  def index
    @active_menu_item = 'active'
    @biographies = Biography.all

    unless params[:slug].nil?
      @biography = Biography.find_by_slug(params[:slug])
    end
  end
end
