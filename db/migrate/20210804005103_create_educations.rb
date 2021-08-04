class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.integer :student_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :degree
      t.string :university_name
      t.string :details

      t.timestamps
    end
  end
end