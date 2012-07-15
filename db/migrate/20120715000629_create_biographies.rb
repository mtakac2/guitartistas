class CreateBiographies < ActiveRecord::Migration
  def up
    create_table :biographies do |t|
      t.string :title, :null => false
      t.text :content, :null => false
      t.string :image
      t.string :slug,  :null => false

      t.timestamps
    end
    
    execute <<-SQL
      CREATE UNIQUE INDEX biographies_title
        ON biographies (title)
    SQL
  end

  def down
    drop_table :biographies
  end
end
