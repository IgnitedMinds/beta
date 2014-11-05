class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :name
      t.text :content
      t.text :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
