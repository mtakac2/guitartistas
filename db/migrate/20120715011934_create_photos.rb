class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.string :title,     :null => false
      t.text :caption
      t.string :image,     :null => false
      t.integer :album_id, :null => false

      t.timestamps
    end

    execute <<-SQL
      CREATE INDEX photos_title
        ON photos (title)
    SQL

    execute <<-SQL
      ALTER TABLE photos
        ADD CONSTRAINT fk_photos_albums
        FOREIGN KEY (album_id) REFERENCES albums (id)
        ON DELETE CASCADE
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE photos
        DROP CONSTRAINT fk_photos_albums        
    SQL

    drop_table :photos
  end
end
