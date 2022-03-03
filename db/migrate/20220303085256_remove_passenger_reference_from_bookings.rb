class RemovePassengerReferenceFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :passenger
  end
end
