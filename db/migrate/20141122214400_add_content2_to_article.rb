class AddContent2ToArticle < ActiveRecord::Migration
  def change
  	add_column :articles, :content2, :text
  end
end
