class CreateRecordings < ActiveRecord::Migration
  def up
    create_table :recordings do |t|
      t.string :title, :null => false
      t.text :description
      t.string :url,   :null => false

      t.timestamps
    end

    execute <<-SQL
      CREATE UNIQUE INDEX recordings_title
        ON recordings (title)
    SQL
  end

  def down
    drop_table :recordings
  end
end
