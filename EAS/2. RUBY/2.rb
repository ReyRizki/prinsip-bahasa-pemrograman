class Ikan 
  def initialize(umur, jk)
    @umur = umur
    @jk = jk
  end

  def printUmur
    puts "Umur = " + @umur.to_s
  end

  def printJK
    puts "JK = " + @jk
  end

  def printSuara
    print "Suara = glup glup"
  end
end

module CheckDewasa
  def isDewasa?
    puts "Status = " + (@umur > 5 ? "Indukan/Dewasa" : "Anakan")
  end
end

class Cupang < Ikan
  include CheckDewasa
  
  def initialize(nama, jenis, umur, jk)
    super(umur, jk)
    @nama = nama
    @jenis = jenis
  end

  def printNama
    puts "Nama = " + @nama
  end

  def printJenis
    puts "Jenis = " + @jenis
  end

  def printSuara
    super
    puts " aku " + @nama
  end
end

puts "Test Class Ikan"
ikan = Ikan.new(5, 'M')
ikan.printUmur
ikan.printJK
ikan.printSuara
puts 
puts

puts "Test 1"
cupang1 = Cupang.new("Si Dua Warna", "HalfMoon", 3.5, 'F')
cupang1.printJenis
cupang1.printJK
cupang1.printSuara
cupang1.printUmur
cupang1.isDewasa?
puts

puts "Test 2"
cupang2 = Cupang.new("Si Biru Putih", "PK Blue Rim", 6.2, 'M')
cupang2.printJenis
cupang2.printJK
cupang2.printSuara
cupang2.printUmur
cupang2.isDewasa?
