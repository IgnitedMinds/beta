class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :title
      t.string :source
      t.string :type
      t.datetime :age_range
      t.datetime :deadline
      t.string :location

      t.timestamps
    end
  end
end
