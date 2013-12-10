class Student < ActiveRecord::Base
  has_many :student_courses
  has_many :courses, through: :student_courses

  validates :email, presence: true, uniqueness: true
  #validates_presence_of :email
end
