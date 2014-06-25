class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :max_attendence
      t.integer :stages
      t.integer :max_vendors

      t.timestamps
    end
  end
end
