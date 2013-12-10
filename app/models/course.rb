class Course < ActiveRecord::Base
  #belongs_to :student
  has_many :student_courses
  has_many :students, through: :student_courses
end
