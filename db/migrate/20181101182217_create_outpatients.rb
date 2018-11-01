class CreateOutpatients < ActiveRecord::Migration[5.2]
  def change
    create_table :outpatients do |t|
      t.date :dt

      t.timestamps
    end
  end
end
