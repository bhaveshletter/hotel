class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.string :bed_type
      t.boolean :pool_facing, default: false
      t.boolean :gym, default: false
      t.boolean :breakfast, default: false
      t.boolean :pick_n_drop, default: false
      t.float :price
      t.integer :hotelapp_id
      t.integer :room_no
      t.string :room_floor
      t.attachment :image
      t.timestamps
    end
  end
end
