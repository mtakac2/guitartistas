ActiveAdmin.register Photo do
  menu :parent => 'Gallery'
  form :partial => 'form'
  belongs_to :album

  index do
    column :title
    column :caption
    column :image do |img|
      image_tag img.image_url(:thumb).to_s
    end
    column :created_at
    default_actions
  end

  show do
    render 'show'
  end

  controller do    

    def create
      @album = Album.find_by_id(params[:album_id])
      @photo = @album.photos.build(params[:photo])

      if @photo.save
        redirect_to admin_album_path(@album), 
          notice: 'Photo was successfully created.'
      else
        render 'new'
      end      
    end

    def update
      @album = Album.find_by_id(params[:album_id])
      @photo = @album.photos.find_by_id(params[:id])

      if @photo.update_attributes(params[:photo])
        redirect_to admin_album_path @album,
          notice: 'Photo was successfully created.'
      else
        render 'edit'
      end
    end

    def destroy
      @album = Album.find_by_id(params[:album_id])
      @photo = @album.photos.find_by_id(params[:id])
      @photo.destroy

      redirect_to [:admin, @album],
        :notice => 'Photo was successfully destroyed.'        
    end

  end

  action_item :only => :new do
    link_to 'View all albums', admin_albums_path
  end
end