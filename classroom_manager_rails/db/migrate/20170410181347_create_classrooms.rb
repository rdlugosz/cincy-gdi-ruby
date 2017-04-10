class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :room_number

      t.timestamps null: false
    end
  end
end
