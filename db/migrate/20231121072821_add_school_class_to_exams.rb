class AddSchoolClassToExams < ActiveRecord::Migration[7.1]
  def change
    add_reference :exams, :school_class, null: false, foreign_key: true
  end
end
