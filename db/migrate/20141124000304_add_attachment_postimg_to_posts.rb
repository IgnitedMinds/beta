class AddAttachmentPostimgToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :postimg
    end
  end

  def self.down
    remove_attachment :posts, :postimg
  end
end
