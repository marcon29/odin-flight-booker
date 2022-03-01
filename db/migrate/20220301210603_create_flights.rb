class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :flight_num
      t.date :date
      t.time :time
      t.references :depart_airport, foreign_key: {to_table: :airports}
      t.references :arrive_airport, foreign_key: {to_table: :airports}

      t.timestamps
    end
  end
end
