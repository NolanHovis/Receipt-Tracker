class AddUserIdToReceipts < ActiveRecord::Migration[6.1]
  def change
    add_column :receipts, :user_id, :int
  end
end
