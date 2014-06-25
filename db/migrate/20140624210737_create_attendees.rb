class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.references :west_neighbor, index: true
      t.references :east_neighbor, index: true
      t.references :north_neighbor, index: true
      t.references :south_neighbor, index: true

      t.timestamps
    end
  end
end
