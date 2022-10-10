class Nguoi
  attr_accessor :hoTen, :Tuoi, :CMND

  def initialize(hoten, tuoi, cmnd)
    @hoTen = hoten
    @Tuoi = tuoi
    @CMND = cmnd
  end

  def show
    puts "Ho ten: #{@hoTen}"
    puts "Tuoi: #{@Tuoi}"
    puts "CMND: #{@CMND}"
  end
end

class Phong
  attr_accessor :soNgayThue, :nguoiThue

  def initialize(songaythue, nguoithue)
    @soNgayThue = songaythue
    @nguoiThue = nguoithue
  end

  def show
    puts "So ngay thue: #{@soNgayThue}"
    puts "-- Thong tin nguoi thue --"
    @nguoiThue.show
  end
end

class PhongA < Phong
  attr_accessor :Gia, :loaiPhong

  def initialize(songaythue, nguoithue)
    super(songaythue, nguoithue)
    @Gia = 500
    @loaiPhong = "Loai A"
  end

  def show
    puts "Loai phong: #{@loaiPhong}"
    super
  end

  def tienThue
    tienThue = @soNgayThue * @Gia
    puts "Tien thue: #{tienThue}"
  end
end

class PhongB< Phong
  attr_accessor :Gia, :loaiPhong

  def initialize(songaythue, nguoithue)
    super(songaythue, nguoithue)
    @Gia = 300
    @loaiPhong = "Loai B"
  end

  def show
    puts "Loai phong: #{@loaiPhong}"
    super
  end

  def tienThue
    tienThue = @soNgayThue * @Gia
    puts "Tien thue: #{tienThue}"
  end
end

class PhongC < Phong
  attr_accessor :Gia, :loaiPhong

  def initialize(songaythue, nguoithue)
    super(songaythue, nguoithue)
    @Gia = 100
    @loaiPhong = "Loai C"
  end

  def show
    puts "Loai phong: #{@loaiPhong}"
    super
  end

  def tienThue
    tienThue = @soNgayThue * @Gia
    puts "Tien thue: #{tienThue}"
  end
end

class Khachsan
  attr_accessor :listPhong

  def initialize
    nguoithue1 = Nguoi.new("thai binh", 21, "123456")
    nguoithue2 = Nguoi.new("thai binh 2", 21, "123457")
    nguoithue3 = Nguoi.new("thai binh 3", 21, "123458")

    phong1 = PhongA.new(2, nguoithue1)
    phong2 = PhongB.new(3, nguoithue2)
    phong3 = PhongC.new(1, nguoithue3)

    @listPhong = [phong1, phong2, phong3]
  end

  def themMoi

  end

  def show
    i = 1
    puts "DANH SACH PHONG"
    listPhong.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n----------------"
      i += 1
    end
  end
end

KS = Khachsan.new()
KS.show