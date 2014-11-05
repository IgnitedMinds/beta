class AddVideoToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :video_id, :string
    add_column :articles, :body_img1, :string
    add_column :articles, :bg_img, :string  
	add_column :articles, :tag, :string 
	add_column :articles, :cta_button, :string   
  end
end
