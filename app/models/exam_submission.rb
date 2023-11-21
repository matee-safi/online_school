class ExamSubmission < ApplicationRecord
  belongs_to :exam
  belongs_to :user
  has_many :exam_answers
end
