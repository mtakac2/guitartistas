class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :title, :null => false
      t.datetime :start_time
      t.text :description
      t.string :image

      t.timestamps
    end

    execute <<-SQL
      CREATE INDEX events_title
        ON events
        USING hash (title)
    SQL

    execute <<-SQL
      CREATE INDEX events_start_time
        ON events
        USING btree (start_time)        
    SQL
  end

  def down
    drop_table :events
  end
end
