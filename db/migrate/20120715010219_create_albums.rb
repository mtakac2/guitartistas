class CreateAlbums < ActiveRecord::Migration
  def up
    create_table :albums do |t|
      t.string :title, :null => false
      t.text :description
      t.integer :cover_photo_id

      t.timestamps
    end

    execute <<-SQL
      CREATE UNIQUE INDEX albums_title_unique
        ON albums (title)
    SQL

    execute <<-SQL
      CREATE INDEX albums_cover_photo_id
        ON albums (cover_photo_id)        
    SQL
  end

  def down
    drop_table :albums
  end
end
