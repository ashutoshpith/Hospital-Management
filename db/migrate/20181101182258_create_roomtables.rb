class CreateRoomtables < ActiveRecord::Migration[5.2]
  def change
    create_table :roomtables do |t|
      t.integer :room_no
      t.string :room_type
      t.string :status

      t.timestamps
    end
  end
end
