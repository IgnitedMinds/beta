class AddAttachmentBody1ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :body1
    end
  end

  def self.down
    remove_attachment :articles, :body1
  end
end
