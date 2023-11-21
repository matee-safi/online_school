class ExamAnswer < ApplicationRecord
  belongs_to :exam_submission
  belongs_to :exam_question
end
