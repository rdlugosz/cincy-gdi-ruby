class Classroom < ActiveRecord::Base
  has_many :enrollments
  has_many :students, through: :enrollments

  def has_students?
    students.count > 0
  end

  def volunteer
    students.sample
  end
end
