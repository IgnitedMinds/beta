class AddUrlToFunds < ActiveRecord::Migration
  def change
  	add_column :funds, :ext_url, :string
  end
end
