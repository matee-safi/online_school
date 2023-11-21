class Exam < ApplicationRecord
  belongs_to :school_class
  has_many :exam_questions
  has_many :exam_submissions
end
