class Addpricecolumnandlocationtoairlines < ActiveRecord::Migration
  def change
    add_column :airlines, :price, :decimal, :precision => 8, :scale => 2
    add_column :flights, :price, :decimal, :precision => 8, :scale => 2
    add_column  :airports, :location, :string
  end
end
