class EventsController < FrontendController
  def index
    @events = Event.all
  end
end
