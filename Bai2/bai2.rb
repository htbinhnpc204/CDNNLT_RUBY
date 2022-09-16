def menu
  puts '0. Exit'
  puts '1. Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.'
  puts '2. Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? nếu đúng --> tính chu vi, diên tích --> in ra'
  puts '3. Viết chương trình để nhắc người dùng nhập tên của họ, sau đó in kết quả trên màn hình.'
  puts '4. Viết chương trình để nhập ba số nguyên đã biết, sau đó in ra màn hình theo thứ tự tăng dần và giảm dần.'
  puts '5. Viết chương trình để in một số nguyên, một số thực, một ký tự đã được định nghĩa trước.'
end

def bai1
  i = 0
  arr = []
  while (true)
    puts 'Nhập vào 1 số(-1 để dừng nhập): '
    value = gets.chomp.to_i
    if (value == -1)
      break
    else
      arr[i] = value
      i += 1
    end
  end

  puts 'Max: ' + arr.max.to_s
  puts 'Min: ' + arr.min.to_s
  puts 'Avg: ' + (arr.sum * 1.0 / arr.length).to_s
end

def isTriangle(a, b, c)
  if a.is_a?(Integer) && b.is_a?(Integer) && c.is_a?(Integer)
    if a + b >= c || a + c >= b || b + c >= a
      return true
    end
  end
  return false
end

def bai2
  puts 'Nhập vào 3 cạnh của tam giác'
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  c = gets.chomp.to_i
  if (isTriangle(a, b, c))
    puts "#{a}, #{b}, #{c} là 3 cạnh của tam giác"
    cv = a + b + c
    p = (cv * 1.0 / 2).to_f
    dt = Math.sqrt(p * (p - a) * (p - b) * (p - c))
    puts "Chu vi: #{cv}"
    puts "Diện tích: #{dt}"
  else
    puts "#{a}, #{b}, #{c} không phải là 3 cạnh của tam giác"
  end
end

def bai3
  puts "Enter your name: "
  name = gets.chomp
  puts "Your name: " + name
end

def bai4
  puts "Nhập vào 3 số của 1 mảng:"
  arr = []
  3.times do |i|
    arr[i] = gets.chomp.to_i
  end
  arr = arr.sort
  puts "Inscreement: " + arr.join(",")
  puts "Descreement: " + arr.reverse.join(",")
end

def bai5
  puts "Nhập vào 1 số nguyên"
  int = gets.chomp.to_i
  puts "Nhập vào 1 số thực"
  f = gets.chomp.to_f
  puts "Nhập vào 1 ký tự"
  char = gets.chomp
  puts "Số nguyên: #{int}"
  puts "Số thực: #{f}"
  puts "Ký tự: #{char}"
end

while true
  system("clear") || system("cls")
  menu
  puts "\nHãy chọn 1 bài tập:"
  choice = gets.chomp.to_i
  case choice
  when 0
    puts "Goodbye"
    return
  when 1
    bai1
  when 2
    bai2
  when 3
    bai3
  when 4
    bai4
  when 5
    bai5
  else
    puts "Vui lòng chọn bài tập từ 1-5 (0 để exit)"
  end
  puts "Press any key to continue..."
  gets
end
