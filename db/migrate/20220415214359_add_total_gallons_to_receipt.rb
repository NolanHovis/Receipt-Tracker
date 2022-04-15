class AddTotalGallonsToReceipt < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :total_gallons, :decimal
  end
end
