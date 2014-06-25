class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets, id: false do |t|
      t.references :attendee, index: true
      t.references :show, index: true
      t.integer :price

      t.timestamps
    end
  end
end
