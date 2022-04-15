class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.string :gas_station
      t.string :gas_station_address
      t.string :gas_type
      t.decimal :price_per_gal
      t.decimal :fuel_total
      t.datetime :date_pumped
      t.timestamps
    end
  end
end
