class EventsController < FrontendController
  def index
    @active_menu_item = 'active'
    @events = Event.all
  end
end
