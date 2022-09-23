class Man
  attr_accessor :name, :gender, :hairColor, :height, :weight, :phone, :email

  def initialize(name, gender, height, weight, phone, email, hairColor)
    @name = name
    @gender = gender
    @height = height
    @weight = weight
    @phone = phone
    @email = email
    @hairColor = hairColor
  end

  def show
    puts "Name: #{name}"
    puts "Gender: #{gender}"
    puts "Height: #{height}cm - Weight: #{weight}kg"
    puts "Hair color: #{hairColor}"
    puts "Contact: #{phone} - #{email}"
  end
end

class Student < Man

  attr_accessor :id, :_class, :school, :grade

  def initialize(name, gender, height, weight, phone, email, hairColor, id, _class, school, grade)
    super(name, gender, height, weight, phone, email, hairColor)
    @id = id
    @_class = _class
    @school = school
    @grade = grade
  end

  def show
    super
    puts "ID: #{id}"
    puts "Learning at school: #{school} - #{_class}"
    puts "Average grade: #{grade.round(2)}"
  end
end
student = Student.new("Hồ Thái Bình", "Male", 168, 65, "0946794778","htbinhnpc@gmail.com", "black", "1911505310105", "19T1", "UTE UDN", 8.99999)
student2 = Student.new("Hồ Thái Bình 2", "Male", 168, 65, "0946794778","htbinhnpc@gmail.com", "black", "1911505310105", "19T1", "UTE UDN", 9)
student3 = Student.new("Hồ Thái Bình 3", "Male", 168, 65, "0946794778","htbinhnpc@gmail.com", "black", "1911505310105", "19T1", "UTE UDN", 6.22222)
student4 = Student.new("Hồ Thái Bình 4", "Male", 168, 65, "0946794778","htbinhnpc@gmail.com", "black", "1911505310105", "19T1", "UTE UDN", 10.0)

stds = [student, student2, student3, student4]

stds = stds.sort_by!{|a| a.grade}

stds = stds.reverse

i = 1
stds.each do |s|
  puts "#{i}: #{s.name}"
  puts s.grade.round(2)
end
