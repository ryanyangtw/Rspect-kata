class CreateSeatReservations < ActiveRecord::Migration
  def change
    create_table :seat_reservations do |t|
      t.integer :seat_id, index: true
      t.integer :reservation_id, index: true
      t.timestamps
    end
  end
end
