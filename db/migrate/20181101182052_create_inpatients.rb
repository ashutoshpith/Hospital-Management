class CreateInpatients < ActiveRecord::Migration[5.2]
  def change
    create_table :inpatients do |t|
      t.date :date_of_add
      t.date :date_of_dis
      t.integer :advance

      t.timestamps
    end
  end
end
