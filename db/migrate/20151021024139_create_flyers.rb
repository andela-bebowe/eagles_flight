class CreateFlyers < ActiveRecord::Migration
  def change
    create_table :flyers do |t|

      t.timestamps null: false
    end
  end
end
