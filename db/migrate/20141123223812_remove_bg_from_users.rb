class RemoveBgFromUsers < ActiveRecord::Migration
 def up
    remove_column :users, :bg_url
  end

  def down
    add_column :users, :bg_url

  end
end
