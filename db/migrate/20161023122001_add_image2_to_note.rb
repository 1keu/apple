class AddImage2ToNote < ActiveRecord::Migration
  def change
    add_column :notes, :image2, :string
  end
end
