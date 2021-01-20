class Sungai
  def initialize(nama, ikan = [])
    @nama = nama
    @ikan = ikan
  end

  def random_ikan
    idx = rand(0..self.jumlah_ikan - 1)
    temp = @ikan[idx]

    @ikan.delete_at(idx)

    return temp
  end
 
  def jumlah_ikan
    return @ikan.length
  end
end

class Kolam
  def initialize(nama)
    @nama = nama
    @ikan = []
  end

  def tambah_ikan(ikan)
    @ikan << ikan
  end

  def jumlah_ikan
    return @ikan.length
  end

  def nama_ikan
    return @ikan.map { |ikn| ikn.nama }.join(", ")
  end

  def cari_ikan(nama)
    for i in 0..@ikan.length - 1 do
      temp = @ikan[i]
      
      return i if temp.nama == nama
    end

    return -1
  end

  def ambil_ikan(idx)
    @ikan.delete_at(idx)
  end
end

class Pemancing
  attr_reader :kenyang

  def initialize(nama, kolam)
    @nama = nama
    @kenyang = 50
    @kolam = kolam
  end

  def memancing(sungai)
    @kolam.tambah_ikan(sungai.random_ikan) 
    @kenyang = @kenyang - 10
  end

  def absen_ikan
    puts @kolam.nama_ikan
  end

  def makan_ikan(nama_ikan, cara_makan)
    idx = @kolam.cari_ikan(nama_ikan)
    h = Hash["mentah" => 10, "direbus" => 15, "digoreng" => 20, "panggang" => 25]
    
    if (idx == -1)
      puts "Ikan tidak ada"
      return
    end

    if (not h.key?(cara_makan))
      puts "Cara makan tidak ada"
      return
    end

    @kolam.ambil_ikan(idx)
    @kenyang = @kenyang + h[cara_makan]
  end
end

class Ikan
  attr_reader :nama
  def initialize(nama)
    @nama = nama
  end
end

sungai = Sungai.new("A", [Ikan.new("B"), Ikan.new("C")])
kolam = Kolam.new("D")
pemancing = Pemancing.new("E", kolam)

pemancing.memancing(sungai)
pemancing.memancing(sungai)
puts pemancing.kenyang

pemancing.absen_ikan

pemancing.makan_ikan("B", "panggang")
puts pemancing.kenyang
