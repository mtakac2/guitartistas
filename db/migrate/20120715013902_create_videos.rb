class CreateVideos < ActiveRecord::Migration
  def up
    create_table :videos do |t|
      t.string :title, :null => false
      t.text :description
      t.string :url,   :null => false

      t.timestamps
    end

    execute <<-SQL
      CREATE UNIQUE INDEX videos_title
        ON videos (title)
    SQL
  end

  def down
    drop_table :videos
  end
end
