class AddDateToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :end_date, :string
  end
end
