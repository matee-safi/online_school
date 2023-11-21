class SchoolClass < ApplicationRecord
  has_many :exams
  belongs_to :course
end
