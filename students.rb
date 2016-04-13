# 1. Start by defining a Student that has a generic message.
# 2. Use attr_accessor to define a name
# 3. Set it manually, then output it in the #introduce method.
# 4. Create an #initialize where we can provide a name
# 5. Add an age_this_year attribute, make it optional in the initializer
# 6. Create a Classroom class
# 7. Let Students be added to the class
# 8. Introduce all of the students
# 9. Add an Instructor class
# 10. Add some Instructors to the Classroom (show Duck-typing)
# 11. Refactor Classroom to have #add_person rather than #add_student for clarity

class Student
  attr_accessor :name, :age_this_year

  def initialize(name, age_this_year = nil)
    @name           = name
    @age_this_year  = age
  end

  def introduce
    message = "Hi, I'm #{@name}"
    message = message + ", born in #{Time.now.year - age_this_year}" if age
    message += "!"
  end
end

class Classroom
  attr_accessor :students

  def initialize()
    @students = []
  end

  def add_student(student)
    @students.push student
    # @students << student
  end

  def introductions
    @students.each do |student|
      puts student.introduce
    end
  end
end


# Below here, let's set up our data...
puts "Initializing our data..."

me                = Student.new("Ryan")
me.age_this_year  = 36

you = Student.new("Heather")

gdi_ruby = Classroom.new

gdi_ruby.add_student(me)
gdi_ruby.add_student(you)

puts "Done initializing. Ready to go!"
