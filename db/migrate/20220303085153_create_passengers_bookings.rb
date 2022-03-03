class CreatePassengersBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers_bookings do |t|
      t.references :passenger
      t.references :booking

      t.timestamps
    end
  end
end
