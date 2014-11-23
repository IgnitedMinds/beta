class AddAttachmentBackgroundToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :backgroundimg
    end
  end

  def self.down
    remove_attachment :users, :backgroundimg
  end
end
