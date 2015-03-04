class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :rent
      t.integer :member_id

      t.timestamps
    end
  end
end
