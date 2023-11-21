class Exam < ApplicationRecord
  has_many :exam_questions
  has_many :exam_submissions
end
