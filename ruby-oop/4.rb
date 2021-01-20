class Tim
  
  def initialize(nama_tim)
    @nama_tim = nama_tim 
    @pemain = []
  end

  attr_accessor :nama_pelatih

  def tambah_pemain(nama_pemain)
    @pemain << nama_pemain
  end

  def cari_pemain(nama_pemain)
    @pemain.each { |x| return true if nama_pemain == x}

    return false
  end
end

tim = Tim.new("X")

tim.nama_pelatih = "Y"
puts tim.nama_pelatih

tim.tambah_pemain("A")

puts tim.cari_pemain("A")
puts tim.cari_pemain("B")
