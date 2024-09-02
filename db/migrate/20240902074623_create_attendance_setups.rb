class CreateAttendanceSetups < ActiveRecord::Migration[7.1]
  def change
    create_table :attendance_setups do |t|
      t.boolean :roster
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
