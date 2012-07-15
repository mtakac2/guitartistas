ActiveAdmin.register Album do
  menu :parent => 'Multimedia'
  
  index :as => :block do |album|    
    div :for => album, :class => 'album-wrapper' do      
      div :class => 'actions' do
        span do
          link_to 'upload', new_admin_album_photo_path(album)
        end
        span do
          link_to 'edit', edit_admin_album_path(album)
        end            
        span do
          link_to 'destroy', admin_album_path(album), :method => :delete,
            :confirm => 'Are you sure?'
        end        
      end
      div do
        cover = (album.get_cover_photo) ? 
          album.get_cover_photo.image_url(:thumb).to_s : 
          'http://placehold.it/150x150'
        link_to(image_tag(cover), admin_album_path(album))    
      end
      div do
        b do
          'Title:'        
        end
        span do
          album.title
        end
      end
      div do
        b do
          'Photos:'        
        end
        span do
          album.photos.count
        end
      end
      div do
        b do
          'Description:'        
        end
        span do
          album.description
        end
      end      
    end        
  end

  show do    
    render 'show'
  end

  collection_action :set_cover_photo, :method => :post do
    Album.update_all(:cover_photo_id => nil)
    album = Album.find_by_id params[:album_id]    
    album.cover_photo_id = params[:photo_id]
    album.save    
    redirect_to admin_album_path(album), notice: 'pohosdf'
  end

  action_item :except => :index do
    link_to 'View all albums', admin_albums_path
  end

  action_item :only => :show do
    link_to 'Upload photo', new_admin_album_photo_path(album)
  end
end