class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :email
　　　　　t.string :introduction
      t.timestamps null: false
    end
  end
end
