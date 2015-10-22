class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :destination_id
      t.string :departure_id
      t.datetime :departure_date

      t.timestamps null: false
    end
  end
end
@todays_date = Time.now.strftime("%02d%02m%02y")