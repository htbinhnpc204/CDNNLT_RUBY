class Nguoi
  attr_accessor :hoTen, :Tuoi, :queQuan, :maSoGV, :luongCung, :luongThuong, :tienPhat, :luongthucLinh

  def initialize(hoten, tuoi, quequan, maso, luongcung, luongthuong, tienphat, luongthuc)
    @hoTen = hoten
    @Tuoi = tuoi
    @queQuan = quequan
    @maSoGV = maso
    @luongCung = luongcung
    @luongThuong = luongthuong
    @tienPhat = tienphat
    @luongthucLinh = luongthuc
  end

  def show
    puts "Ma so GV: #{@maSoGV} - Ho ten: #{@hoTen}"
    puts "Tuoi: #{@Tuoi} - Que quan: #{@queQuan}"
    puts "Luong cung: #{luongCung} - Luong thuong: #{luongThuong}"
    puts "Tien phat: #{tienPhat} - Luong thuc nhan: #{@luongthucLinh}"
  end
end
class CBGB
  attr_accessor :listCB

  def initialize
    cb1 = Nguoi.new("thai binh1", 23, "QN", "001", 1000000, 200000, 50000, 1150000)
    cb2 = Nguoi.new("thai binh2", 24, "DN", "002", 2000000, 200000, 50000, 2150000)
    cb3 = Nguoi.new("thai binh3", 25, "QN", "003", 3000000, 200000, 50000, 3150000)
    ng = Nguoi.new("1", 1, "1", "1", 1, 1, 1, 1)

    @listCB = [cb1, cb2, cb3, ng]
  end

  def nhapThongTin
    print "Nhap ho ten: "
    ht = gets.chomp
    print "Nhap ma so giao vien: "
    ma = gets.chomp
    print "Nhap tuoi: "
    tuoi = gets.chomp.to_i
    print "Nhap que quan: "
    que = gets.chomp
    print "Nhap luong cung: "
    luongcung = gets.chomp.to_f
    print "Nhap luong thuong: "
    luongthuong = gets.chomp.to_f
    print "Nhap tien phat: "
    tienphat = gets.chomp.to_f

    luongthuc = luongcung + luongthuong - tienphat

    listCB.push(Nguoi.new(ht, tuoi, que, ma, luongcung, luongthuong, tienphat, luongthuc))
  end

  def themCanBo(n)
    puts "===== Them Giao Vien ====="
    for i in 1..n
      print "\nNhap giao vien thu ", i, "\n"
      nhapThongTin
    end
  end

  def xoaCanBo(ma)
    listCB.delete_if { |item| item.maSoGV.chomp.eql?ma }
    print "Đã xoá thành công!"
  end

  def show
    i = 1
    puts "DANH SACH CAN BO"
    listCB.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n----------------"
      i += 1
    end
  end
end

QLCB = CBGB.new

choose = 1
while choose < 4 && choose > 0

  puts "\n1. Them giao vien"
  puts "2. Danh sach giao vien"
  puts "3. Xoa giao vien"
  puts "4. Thoat"

  print "Lua chon cua ban: "
  choose = gets.chomp.to_i

  system("cls")

  case choose
  when 1
    system("cls")
    print "So giao vien can them: "
    n = gets.chomp.to_i
    QLCB.themCanBo(n)
    QLCB.show
  when 2
    system("cls")
    QLCB.show
  when 3
    system("cls")
    print "Nhap ma so giao vien: "
    ma = gets.chomp
    QLCB.xoaCanBo(ma)
    QLCB.show
  end
end