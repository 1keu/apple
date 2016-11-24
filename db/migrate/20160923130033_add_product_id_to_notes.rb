class AddProductIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :product_id, :integer
  end
end
