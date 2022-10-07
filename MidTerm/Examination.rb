puts "Sinh viên: Hồ Thái Bình"
puts "Mã sv: 1911505310105"

class Transportation
  attr_accessor :_id, :hangSanXuat, :namSanXuat, :dongXe, :giaBan, :bienSo, :mauXe

  def initialize(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe)
    @_id = id
    @hangSanXuat = hangSanXuat
    @namSanXuat = namSanXuat
    @dongXe = dongXe
    @giaBan = giaBan
    @bienSo = bienSo
    @mauXe = mauXe
  end
  def to_s
    puts "ID: #{_id}"
    puts "Hãng sản xuất: #{hangSanXuat}"
    puts "Năm sản xuất: #{namSanXuat}"
    puts "Dòng xe: #{dongXe}"
    puts "Giá bán: #{giaBan}"
    puts "Biển số: #{bienSo}"
    puts "Màu xe: #{mauXe}"
  end
end

class Car < Transportation
  attr_accessor :soChoNgoi, :kieuDongCo, :nguyenLieu, :soTuiKhi, :ngayDangKiem

  def initialize(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe,soChoNgoi, kieuDongCo, nguyenLieu, soTuiKhi, ngayDangKiem)
    super(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe)
    @soChoNgoi = soChoNgoi
    @kieuDongCo = kieuDongCo
    @nguyenLieu = nguyenLieu
    @soTuiKhi = soTuiKhi
    @ngayDangKiem = ngayDangKiem
  end

  def to_s
    super
    puts "Số chỗ ngồi: #{soChoNgoi}"
    puts "Kiểu động cơ: #{kieuDongCo}"
    puts "Nguyên liệu: #{nguyenLieu}"
    puts "Số túi khí: #{soTuiKhi}"
    puts "Ngày đăng kiểm: #{ngayDangKiem}"
  end
end

class Moto < Transportation
  attr_accessor :congSuat, :dungTichBinhXang

  def initialize(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe, congSuat, dungTichBinhXang)
    super(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe)
    @congSuat = congSuat
    @dungTichBinhXang = dungTichBinhXang
  end

  def to_s
    super
    puts "Công suất: #{congSuat}"
    puts "Dung tích bình xăng: #{dungTichBinhXang}"
  end
end

class Trunk < Transportation
  attr_accessor :trongTai

  def initialize(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe, trongTai)
    super(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe)
    @trongTai = trongTai
  end

  def to_s
    super
    puts "Trọng tải: #{trongTai}"
  end
end

class TransportationManager

  attr :transportList

  def initialize
    @transportList = []
  end

  def addTransport(transport)
    transportList << transport
  end

  def deleteByID(id)
    transportList.delete_if { |item| item._id.eql? id}
  end

  def AdvancedSearch(type, key)
    # @type 1-HangSanXuat 2-Mau 3-BienSo
    result = transportList.select do
    |item|
      if type == '1'
        item.hangSanXuat.eql?key
      elsif type == '2'
        item.mau.eql?key
      else
        item.bienSo.eql?key
      end
    end
    result.each { |item| puts item.to_s }
  end

  def display()
    transportList.each { |item| puts item.to_s }
  end

  def getListSize()
    return transportList.length
  end
end

$manager = TransportationManager.new
car1 = Car.new('C01', 'Toyota', '2019', 'dongxe', ' 1900000', '4567', 'Xanh Dương', '4', 'tuabin', 'Xăng', '2', '07/10/2022')
car2 = Car.new('C02', 'Mex', '2020', 'dongxe', ' 1500000', '6789', 'Xanh Dương', '4', 'DongCo', 'Dầu', '2', '04/10/2022')
trunk1 = Trunk.new('T02', 'HUYNDAI', '2020', 'dongxe', ' 1500000', '6789', 'Xanh Dương', '400')
moto1 = Moto.new('M01', 'ABC', '2020', 'dongxe', ' 1500000', '6789', 'Xanh Dương', '400', '3')
$manager.addTransport car1
$manager.addTransport car2
$manager.addTransport trunk1
$manager.addTransport moto1

def TransportType
  puts "Chọn loại xe"
  puts "1. Xe ô tô"
  puts "2. Xe máy"
  puts "3. Xe tải"
end

while true
  system("cls")
  puts "Hiện tại đang có #{$manager.getListSize} xe trong danh sách"
  puts "1. Thêm phương tiện"
  puts "2. Xóa phương tiện theo ID"
  puts "3. Tìm phương tiện"
  puts "4. Hiển thị danh sách"
  puts "5. Thoát"
  print "Nhập vào lựa chọn của bạn: "
  choose = gets.chomp
  case choose
  when '1'
    TransportType()
    obj = nil
    print "Loại xe: "
    type = gets.chomp
    puts "NHẬP THÔNG TIN XE"
    print "Nhập id xe: "
    id = gets.chomp
    print "Nhập hãng sản xuất: "
    hangSanXuat = gets.chomp
    print "Nhập năm sản xuất: "
    namSanXuat = gets.chomp
    print "Nhập dòng xe: "
    dongXe = gets.chomp
    print "Nhập giá bán: "
    giaBan = gets.chomp
    print "Nhập biển số: "
    bienSo = gets.chomp
    print "Nhập màu xe: "
    mauXe = gets.chomp
    case type
    when '1'
      print "Nhập số chỗ ngồi: "
      soChoNgoi = gets.chomp
      print "Nhập kiểu động cơ: "
      kieuDongCo = gets.chomp
      print "Nhập nhiên liệu: "
      nhienLieu = gets.chomp
      print "Nhập số túi khí: "
      soTuiKhi = gets.chomp
      print "Nhập ngày đăng kiểm: "
      ngayDangKiem = gets.chomp
      obj = Car.new(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe, soChoNgoi, kieuDongCo, nhienLieu, soTuiKhi, ngayDangKiem)
    when '2'
      print "Nhập công suất: "
      congSuat = gets.chomp
      print "Nhập dung tích bình xăng: "
      dungTich = gets.chomp
      obj = Moto.new(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe, congSuat, dungTich)
    when '3'
      print "Nhập trọng tải"
      trongTai = gets.chomp
      obj = Trunk.new(id, hangSanXuat, namSanXuat, dongXe, giaBan, bienSo, mauXe, trongTai)
    end
    $manager.addTransport(obj)
  when '2'
    print "Nhập id muốn xóa: "
    id = gets.chomp
    $manager.deleteByID(id)
    puts "Xóa thành công #{id}"
  when '3'
    puts "1. Hãng sản xuất"
    puts "2. Màu"
    puts "3. Biển số"
    puts "Chọn loại tìm kiếm: "
    type = gets.chomp
    puts "Từ khóa cần tìm: "
    key = gets.chomp
    $manager.AdvancedSearch(type, key)
  when '4'
    $manager.display()
  when '5'
    break
  end
  puts "Press any key to continue..."
  gets

end