class CreateDoctortables < ActiveRecord::Migration[5.2]
  def change
    create_table :doctortables do |t|
      t.string :doctor_name
      t.string :doctor_sp

      t.timestamps
    end
  end
end
