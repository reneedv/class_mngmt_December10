class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :student_courses
  has_many :courses, through: :student_courses

  validates :email, presence: true, uniqueness: true
  #validates_presence_of :email
end
