class ExamQuestion < ApplicationRecord
  belongs_to :exam
  has_many :exam_answers
end
