class Nguoi
  attr_accessor :hoTen, :tuoi, :ngheNghiep, :cmnd

  def initialize(hoten, tuoi, nghenghiep, cmnd)
    @hoTen = hoten
    @tuoi = tuoi
    @ngheNghiep = nghenghiep
    @cmnd = cmnd
  end

  def show
    puts "Ho ten: #{hoTen}"
    puts "Tuoi: #{tuoi}"
    puts "Nghe nghiep: #{ngheNghiep}"
    puts "CMND: #{cmnd}"
  end
end

class Hogiadinh
  attr_accessor :soTV, :soNha, :listTV

  def initialize(sotv, sonha, listtv)
    @soNha = sonha
    @soTV = sotv
    @listTV = listtv
  end

  def show
    puts "So thanh vien: #{@soTV}"
    puts "So nha: #{@soNha}"
    puts "Thong tin ca nhan moi thanh vien:"
    listTV.each do |val|
      val.show
      puts "------------"
    end
  end
end

class Khupho
  attr_accessor :listHGD

  def initialize
    @listHGD = []
  end

  def nhapThongtin
    print "Nhap so thanh vien: "
    sotv = gets.chomp.to_i
    print "Nhap so nha: "
    sonha = gets.chomp

    thanhviens = []
    for i in 1..sotv
      puts "Nhap thong tin thanh vien thu #{i}"
      print "Nhap ho ten: "
      hoten = gets.chomp
      print "Nhap tuoi: "
      tuoi = gets.chomp.to_i
      print "Nhap nghe nghiep: "
      nghe = gets.chomp
      print "Nhap CMND: "
      cmnd = gets.chomp

      thanhviens.push(Nguoi.new(hoten, tuoi, nghe, cmnd))
    end

    listHGD.push(Hogiadinh.new(sotv, sonha, thanhviens))
  end

  def themHGD(n)
    puts "===== Them Ho Gia Dinh ====="
    for i in 1..n
      print "Nhap ho gia dinh thu ", i, "\n"
      nhapThongtin
    end
  end

  def show
    i = 1
    puts "DANH SACH HO GIA DINH"
    listHGD.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n==========================="
      i += 1
    end
  end
end

KP = Khupho.new()
print "Nhap so ho dan can them: "
n = gets.chomp.to_i
KP.themHGD(n)
KP.show
