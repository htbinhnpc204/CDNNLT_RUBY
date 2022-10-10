class Student
  attr_accessor :name,:age,:school

  def initialize(name, age, school)
    @name = name
    @age = age
    @school = school
  end

  def to_s
    puts "Student name: #{name} - Age: #{age}"
    puts "School: #{school}"
  end
end
class Card

  attr_accessor :student,:id,:borrowDate,:paymentDate,:bookId

  def initialize(student, id, borrowDate, paymentDate,  bookId)
    @student = student
    @id = id
    @borrowDate = borrowDate
    @paymentDate = paymentDate
    @bookId = bookId
  end

  def to_s
    student.to_s
    puts "ID: #{id}"
    puts "Borrow date: #{borrowDate}"
    puts "Payment date: #{paymentDate}"
    puts "Book id: #{bookId}"
  end
end

class CardManager
  attr_accessor :cards

  def initialize
    @cards =  Array.new
  end

  def add(card)
    cards << card
  end

  def delete(id)
    card = cards.delete_if { |item| item.id.eql?id}
    print card
  end

  def display
    cards.each { |item| item.to_s }
  end
end

puts "Menu"
puts "1. Thêm phiếu mượn"
puts "2. Xóa phiếu mượn"
puts "3. Hiển thị thông tin"