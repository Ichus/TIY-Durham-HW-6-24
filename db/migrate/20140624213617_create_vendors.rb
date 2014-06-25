class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :vendor_type
      t.string :location
      t.references :show, index: true

      t.timestamps
    end
  end
end
