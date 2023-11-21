class CreateExamAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :exam_answers do |t|
      t.references :exam_submission, null: false, foreign_key: true
      t.references :exam_question, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
