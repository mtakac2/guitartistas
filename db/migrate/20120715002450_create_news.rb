class CreateNews < ActiveRecord::Migration
  def up
    create_table :news do |t|
      t.string :title, :null => false
      t.text :content, :null => false

      t.timestamps
    end

    execute <<-SQL
      CREATE UNIQUE INDEX news_title
        ON news (title)
    SQL
  end

  def down
    drop_table :news
  end
end
