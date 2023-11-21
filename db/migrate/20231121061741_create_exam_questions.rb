class CreateExamQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :exam_questions do |t|
      t.references :exam, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
