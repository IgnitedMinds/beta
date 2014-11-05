class AddBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bio, :text
    add_column :users, :bg_url, :string
    add_column :users, :avatar_url, :string
  end
end
