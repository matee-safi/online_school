class CreateExams < ActiveRecord::Migration[7.1]
  def change
    create_table :exams do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
