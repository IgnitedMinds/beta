class AddBackgroundToArticles < ActiveRecord::Migration
   def self.up
    add_attachment :articles, :background
  end

  def self.down
    remove_attachment :articles, :background
  end
end
