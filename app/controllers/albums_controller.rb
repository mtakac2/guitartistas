class AlbumsController < FrontendController
  def index
    @albums = Album.all
  end

  def show
    @album  = Album.find_by_id(params[:id])    
  end
end
