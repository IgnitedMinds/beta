class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :venue
      t.datetime :date_time
	  t.text :description
	  t.string :ext_url

      t.timestamps
    end
  end
end
