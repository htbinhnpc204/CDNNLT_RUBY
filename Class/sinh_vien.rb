class SinhVien
  attr_accessor :name, :id, :mLy, :mHoa, :mToan

  def initialize(name, id)
    @name = name
    @id = id
  end

  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_id(id)
    @id = id
  end

  def get_id
    @id
  end

  def nhap_diem_toan(mToan)
    @mToan = mToan
  end

  def nhap_diem_ly(mLy)
    @mLy = mLy
  end

  def nhap_diem_hoa(mHoa)
    @mHoa = mHoa
  end

  def get_dtb
    (@mToan + mLy + mHoa) / 3.0
  end

  def display
    puts "Tên sinh viên: #{@name}"
    puts "Mã sinh viên: #{@id}"
    puts "Điểm trung bình: #{get_dtb().round(2)}"
  end
end
system("cls")
print "Nhập họ tên sinh viên: "
name = gets.chomp
print "Nhập mã sinh viên: "
id = gets.chomp
std = SinhVien.new(name, id)
print "Nhập vào điểm hóa: "
std.nhap_diem_hoa(gets.chomp.to_i)
print "Nhập vào điểm lý: "
std.nhap_diem_ly(gets.chomp.to_i)
print "Nhập vào điểm toaán: "
std.nhap_diem_toan(gets.chomp.to_i)
puts "\n===\tTHÔNG TIN SINH VIÊN: #{std.get_name}\t==="
std.display