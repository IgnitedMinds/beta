class RemoveUrlsFromArticles < ActiveRecord::Migration
 def up
    remove_column :articles, :thumbnail
    remove_column :articles, :body_img1
    remove_column :articles, :bg_img
  end

  def down
    add_column :articles, :thumbnail, :string 
    add_column :articles, :body_img1, :string
    add_column :articles, :bg_img
  end
end
