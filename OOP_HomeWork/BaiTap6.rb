class Hocsinh
  attr_accessor :hoTen, :Tuoi, :queQuan

  def initialize(hoten, tuoi, quequan)
    @hoTen = hoten
    @Tuoi = tuoi
    @queQuan = quequan
  end

  def show
    puts "Ho ten: #{@hoTen}"
    puts "Tuoi: #{@Tuoi}"
    puts "Que quan: #{@queQuan}"
  end
end

class Quanlyhocsinh
  attr_accessor :listHS

  def initialize
    hs1 = Hocsinh.new("thai binh1", 20, "QN")
    hs2 = Hocsinh.new("thai binh2", 20, "DN")
    hs3 = Hocsinh.new("thai binh3", 23, "DN")
    hs4 = Hocsinh.new("thai binh4", 23, "DN")

    @listHS = [hs1, hs2, hs3, hs4]
  end

  def nhapThongTin
    print "Nhap ho ten: "
    ht = gets.chomp
    print "Nhap tuoi: "
    tuoi = gets.chomp.to_i
    print "Nhap que quan: "
    que = gets.chomp

    listHS.push(Hocsinh.new(ht, tuoi, que))
  end

  def themHS(n)
    puts "===== Them Ho Hoc Sinh ====="
    for i in 1..n
      print "\nNhap hoc sinh thu ", i, "\n"
      nhapThongTin
    end
  end

  def tiemKiem1
    i = 1
    puts "DANH SACH HOC SINH 20 TUOI"
    listHS.each do |val|
      if val.Tuoi == 20
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end

  def tiemKiem2
    i = 1
    puts "DANH SACH HOC SINH 20 TUOI"
    listHS.each do |val|
      if val.Tuoi == 23 && val.queQuan == "DN"
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
    i = i - 1
    puts "Số lượng: #{i}"
  end

  def show
    i = 1
    puts "DANH SACH HOC SINH"
    listHS.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n----------------"
      i += 1
    end
  end
end

QLHS = Quanlyhocsinh.new()

choose = 1
while choose < 4 && choose > 0

  puts "\n1. Thêm học sinh"
  puts "2. Hiển thị các học sinh 20 tuổi"
  puts "3. Số lượng học sinh 23 tuổi và quê DN"
  puts "4. Thoát"

  print "Lựa chọn của bạn: "
  choose = gets.chomp.to_i

  system("cls")

  case choose
  when 1
    system("cls")
    print "Số học sinh cần thêm: "
    n = gets.chomp.to_i
    QLHS.themHS(n)
    QLHS.show
  when 2
    system("cls")
    QLHS.tiemKiem1
  when 3
    system("cls")
    QLHS.tiemKiem2
    end
end
