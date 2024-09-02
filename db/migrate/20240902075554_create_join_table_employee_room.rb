class CreateJoinTableEmployeeRoom < ActiveRecord::Migration[7.1]
  def change
    create_join_table :employees, :rooms do |t|
      # t.index [:employee_id, :room_id]
      # t.index [:room_id, :employee_id]
    end
  end
end
