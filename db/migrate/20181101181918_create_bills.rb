class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.integer :doctor_charge
      t.integer :medicine_charge
      t.integer :room_charge
      t.integer :opteration_charge
      t.integer :no_day

      t.timestamps
    end
  end
end
