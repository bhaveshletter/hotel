class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.float :discount
      t.float :final_price
      t.string :date
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
