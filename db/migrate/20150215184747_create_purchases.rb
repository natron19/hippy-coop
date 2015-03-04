class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.float :cost
      t.integer :member_id

      t.timestamps
    end
  end
end
