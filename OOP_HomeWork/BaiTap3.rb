class ThiSinh
  attr_accessor :_id, :name, :address, :priority

  def initialize(id, name, address, priority)
    @_id = id
    @name = name
    @address = address
    @priority = priority
  end

  def to_s
    puts "Số báo danh: #{id}"
    puts "Họ tên: #{name}"
    puts "Địa chỉ: #{address}"
    puts "Mức ưu tiên: #{priority}"
  end
end

class KhoiA < ThiSinh
  def initialize(id, name, address, priority)
    super(id, name, address, priority)
  end

  def to_s
    super
    puts "Thí sinh khối A"
    puts "Môn thi: Toán, Lý, Hoá"
  end
end

class KhoiB < ThiSinh
  def initialize(id, name, address, priority)
    super(id, name, address, priority)
  end

  def to_s
    super
    puts "Thí sinh khối B"
    puts "Môn thi: Toán, Hoá, Sinh"
  end
end

class KhoiC < ThiSinh
  def initialize(id, name, address, priority)
    super(id, name, address, priority)
  end

  def to_s
    super
    puts "Thí sinh khối C"
    puts "Môn thi: Văn, Sử, Địa"
  end
end

class TuyenSinh
  attr :thiSinhList

  def initialize
    @thiSinhList = Array.new
  end

  def addThiSinh(thiSinh)
    thiSinhList << thiSinh
  end

  def findByID(id)
    result = thiSinhList.first { |item| item._id.eql?id }
    puts result.to_s
  end
end

manager = TuyenSinh.new

while (true)
  print("Application Manager Candidate","\n")
  print("Enter 1: To insert candidate","\n")
  print("Enter 2: To show information of candidate: ","\n")
  print("Enter 3: To search candidate by id","\n")
  print("Enter 4: To exit:","\n")
  line = gets.chomp
  if (line=="1")
    print("Enter a: to insert Candidate A","\n")
    print("Enter b: to insert Candidate B","\n")
    print("Enter c: to insert Candidate C","\n")
    type = gets.chomp
    if (type=="a")

    elsif(type=="b")

    elsif(type=="c")

      elseprint("Invalid","\n")
    end
  elsif(line=="2")

  elsif(line=="3")
    print("Enter ID: ")
    id = gets.chomp
  elsif(line=="4")
    return
    elseprint("Invalid","\n")
    continue
  end
end