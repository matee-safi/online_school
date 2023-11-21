class CreateExamSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :exam_submissions do |t|
      t.references :exam, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
